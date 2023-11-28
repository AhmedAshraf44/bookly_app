import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       CustomTextField()
      ],
    );
  }
}


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        suffixIcon:  Icon(
              FontAwesomeIcons.magnifyingGlass,
            size: 22,
            ),
            hintText: 'Search'
      ),
    );
  }
}