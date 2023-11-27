import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        ),
    );
  }
}