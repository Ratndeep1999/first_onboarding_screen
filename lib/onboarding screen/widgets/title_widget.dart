import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Maecellus',
          color: Colors.black,
          fontSize: 42,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
