part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errMessege;
  const NewestBooksFailure(
    this.errMessege,
  );
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newestBooks;

  const NewestBooksSuccess(this.newestBooks);
}
