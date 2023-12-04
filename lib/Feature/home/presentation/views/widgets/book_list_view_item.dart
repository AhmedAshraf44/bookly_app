import 'package:bookly_app/core/models/book_models/book_models.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModels});
  
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModels);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModels.volumeInfo.imageLinks!.thumbnail),
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
                      bookModels.volumeInfo.title!,
                      maxLines: 2,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kaGTSectraFine),
                          
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModels.volumeInfo.authors![0],
                    style: Styles.textStyle14
                        .copyWith(color: const Color(0xffADACB2)),
                       
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(count: bookModels.volumeInfo.ratingsCount?? 0,
                       rating: bookModels.volumeInfo.averageRating ?? 0,
                       ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
