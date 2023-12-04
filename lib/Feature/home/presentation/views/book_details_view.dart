import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/presentation/manger/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
 @override
  void initState() {
     BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBooks(categories:widget.bookModels.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModels: widget.bookModels),
      ),
    );
  }
}
