import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder:  buildOutlineInputBorder(),
        suffixIcon:const  Opacity(
          opacity: .8,
          child: Icon(
                FontAwesomeIcons.magnifyingGlass,
              size: 22,
              color: Colors.white,
              ),
        ),
            hintText: 'Search'
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide:const BorderSide(
          color: Colors.white
        ),
        borderRadius: BorderRadius.circular(12),
      );
  }
}