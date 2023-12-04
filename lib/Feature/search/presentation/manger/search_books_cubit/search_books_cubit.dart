import 'package:bookly_app/Feature/search/data/repos/search_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepoImpl) : super(SearchBooksInitial());

  final SearchRepoImpl searchRepoImpl;
  Future<void> fetchSearchBooks({required String bookName}) async {
    emit(SearchBooksloading());
    var result = await searchRepoImpl.fatchSearchBook(bookName: bookName);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
