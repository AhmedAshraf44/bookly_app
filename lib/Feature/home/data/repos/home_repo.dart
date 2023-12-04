import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
Future<Either< Failure,List<BookModels>>>  fetchNewestBooks();
Future<Either< Failure,List<BookModels>>>  fetchFeaturesBooks();
Future<Either< Failure,List<BookModels>>>  fetchSimilarBooks({required String categories});

}


