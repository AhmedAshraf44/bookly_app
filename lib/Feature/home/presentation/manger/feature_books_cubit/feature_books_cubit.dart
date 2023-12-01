import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Feature/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;
  
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturesBooks();
    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errorMessage),);
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
  
}
