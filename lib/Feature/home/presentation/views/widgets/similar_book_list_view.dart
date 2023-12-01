import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          imageUrl: 'https://images.unsplash.com/photo-1448964899744-8929e9d992d7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFsZXN0aW5lfGVufDB8fDB8fHww',
          ),
      ),
    );
  }
}
