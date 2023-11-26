import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.7/4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  AssetsData.book1,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}