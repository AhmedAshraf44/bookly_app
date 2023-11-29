import 'package:bookly_app/Feature/home/data/models/book_models/book_models.dart';

abstract class HomeRepo {
Future<List<BookModels>>  fetchBestSallerBooks();
Future<List<BookModels>>  fetchFeaturesBooks();
}