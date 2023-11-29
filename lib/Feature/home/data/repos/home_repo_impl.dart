import 'package:bookly_app/Feature/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo 
{
  @override
  Future<Either<Failure, List<BookModels>>> fetchBestSallerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturesBooks() {
    throw UnimplementedError();
  }


}