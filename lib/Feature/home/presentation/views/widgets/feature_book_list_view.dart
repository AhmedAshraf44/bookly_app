import 'package:bookly_app/Feature/home/presentation/manger/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail, 
              ),
            ),
          );
        } else if (state is FeatureBooksLoading){
          return const CustomLoadingIndicator();
        } else {
          return const Text('oops error');
        }
      },
    );
  }
}
