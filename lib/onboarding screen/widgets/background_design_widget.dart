import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BackgroundDesignWidget extends StatelessWidget {
  const BackgroundDesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        color: Colors.orange.shade100,
        strokeWidth: 2.5,
        borderType: BorderType.Circle,
        dashPattern: [2.5, 5], // dot length, space length
        child: Container(
          height: 250,
          width: 250,
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFFF3C6A8), Color(0xFFFFF0E4)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
