import 'package:bookly_app/Feature/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
        const  SizedBox(
            height: 16,
          ),
        const  Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
         const SizedBox(
            height: 16,
          ),
        const  Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
