import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {

 Future<Either<Failure,List<BookModels>>> fatchSearchBook({required String bookName});
}