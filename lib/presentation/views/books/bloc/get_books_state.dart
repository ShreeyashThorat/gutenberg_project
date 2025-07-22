part of 'get_books_bloc.dart';

class GetBooksState extends Equatable {
  const GetBooksState();

  @override
  List<Object> get props => [];
}

final class GetBooksInitial extends GetBooksState {}

final class GetBooksLoading extends GetBooksState {}

class GetBooksLoaded extends GetBooksState {
  final List<BookModel> books;
  final bool loadMore;

  const GetBooksLoaded({
    this.books = const <BookModel>[],
    this.loadMore = false,
  });

  GetBooksLoaded copyWith({List<BookModel>? newbooks, bool? loadMore}) {
    return GetBooksLoaded(
      books: newbooks ?? books,
      loadMore: loadMore ?? this.loadMore,
    );
  }

  @override
  List<Object> get props => [books, loadMore];
}

class ErrorOccuredGetBooks extends GetBooksState {
  final AppException exception;
  const ErrorOccuredGetBooks({required this.exception});

  @override
  List<Object> get props => [exception];
}
