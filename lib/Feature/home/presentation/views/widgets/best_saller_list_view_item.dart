import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
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
       const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  style: Styles.textStyle20.copyWith(fontFamily: kaGTSectraFine),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "J.K. Rowling",
                style: Styles.textStyle14.copyWith(color:const Color(0xffADACB2)),
              ),
              Row(
                children: [
                  Text(
                    "19.99 \$",
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                  ),
                 const Spacer(),
                 const BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}