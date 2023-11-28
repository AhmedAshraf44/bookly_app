import 'package:bookly_app/Feature/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) =>const Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child:  BookListViewItem(),
      ));
  }
}
