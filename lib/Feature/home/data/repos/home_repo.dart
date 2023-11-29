import 'package:bookly_app/Feature/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
Future<Either< Failure,List<BookModels>>>  fetchBestSallerBooks();
Future<Either< Failure,List<BookModels>>>  fetchFeaturesBooks();
}


