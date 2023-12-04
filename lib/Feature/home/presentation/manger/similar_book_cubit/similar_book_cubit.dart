import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/models/book_models/book_models.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());

  final HomeRepo homeRepo;
  
  Future<void> fetchSimilarBooks({required String categories}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(categories: categories);
    result.fold((failure) {
      emit(SimilarBookFailure(failure.errorMessage),);
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
