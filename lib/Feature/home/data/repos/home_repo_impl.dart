import 'package:bookly_app/Feature/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo 
{

 final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModels>>> fetchNewestBooks() async{
  try {
  var data =  await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
  List<BookModels> book = [];  
  for (var item in data['items']) {
    book.add(item);
  }
  return right(book);
}  catch (e) {
  return left(ServerFailure());
}

  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturesBooks() {
    throw UnimplementedError();
  }


}