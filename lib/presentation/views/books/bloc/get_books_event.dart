part of 'get_books_bloc.dart';

class GetBooksEvent extends Equatable {
  const GetBooksEvent();

  @override
  List<Object> get props => [];
}

class GetBooks extends GetBooksEvent {
  final bool? loading;
  final String? category;
  final String? query;
  const GetBooks({this.loading, this.category, this.query});
}
