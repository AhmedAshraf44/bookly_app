import 'package:bookly_app/Feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return const CustomScrollView(
    slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
           CustomBookDetailsAppBar(),
         BookDetailsSection(),
          Expanded(
            child:  SizedBox(
              height: 50,
            ),
          ),
         SimilarBookSection(),
           SizedBox(
            height: 40,
          ),
        ],
      ),
    ) ,
      ),
    ],
   );
  }
}



