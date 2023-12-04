import 'package:bookly_app/Feature/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {

  final ApiService apiService;
  
  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModels>>> fatchSearchBook({required String bookName}) async{
        try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&sorting=relevance&q=$bookName');
      List<BookModels> book = [];
      for (var item in data['items']) {
        book.add(BookModels.fromJson(item));
      }

      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.formDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }


}