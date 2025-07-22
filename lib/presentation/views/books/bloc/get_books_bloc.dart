import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gutenberg_project/core/exceptions/app_exception.dart';
import 'package:gutenberg_project/data/models/book_model.dart';
import 'package:gutenberg_project/data/repositories/books_repository.dart';

part 'get_books_event.dart';
part 'get_books_state.dart';

class GetBooksBloc extends Bloc<GetBooksEvent, GetBooksState> {
  int page = 1;
  GetBooksBloc() : super(GetBooksInitial()) {
    on<GetBooks>((event, emit) async {
      try {
        if (state is GetBooksInitial || event.loading == true) {
          page = 1;
          emit(GetBooksLoading());
          final books = await BooksRepository().getBooks(
            page,
            topic: event.category ?? "",
            query: event.query ?? "",
          );
          page++;
          return emit(GetBooksLoaded(books: books));
        } else if (state is GetBooksLoaded) {
          GetBooksLoaded getBooksLoaded = state as GetBooksLoaded;
          final moreBooks = await BooksRepository().getBooks(
            page,
            topic: event.category ?? "",
            query: event.query ?? "",
          );
          page++;
          if (page != 2) {
            return moreBooks.isEmpty
                ? emit(getBooksLoaded.copyWith(loadMore: true))
                : emit(
                  getBooksLoaded.copyWith(
                    newbooks: getBooksLoaded.books + moreBooks,
                    loadMore: false,
                  ),
                );
          } else {
            return emit(
              getBooksLoaded.copyWith(newbooks: moreBooks, loadMore: false),
            );
          }
        }
      } on AppException catch (e) {
        emit(ErrorOccuredGetBooks(exception: e));
        e.print;
      } catch (e) {
        emit(ErrorOccuredGetBooks(exception: AppException()));
      }
    });
  }
}
