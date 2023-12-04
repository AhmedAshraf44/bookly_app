import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            text: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            textColor: Colors.black,
          )),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              text: 'Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              textColor: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
