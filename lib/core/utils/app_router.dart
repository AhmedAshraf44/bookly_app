import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Feature/home/presentation/manger/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/Feature/search/presentation/views/search_view.dart';
import 'package:bookly_app/Feature/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModels: state.extra as BookModels),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
