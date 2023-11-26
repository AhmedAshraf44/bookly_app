import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/feature_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30,),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureListView(),
          SizedBox(
            height: 60,
          ),
          Text('Best Saller',style: Styles.titleMedium,)
        ],
      ),
    );
  }
}



