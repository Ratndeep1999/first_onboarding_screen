import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
   IconButtonWidget({
    super.key,
    required this.onTap,
    this.semanticLabel,
    this.isPrevious,
  });

  final VoidCallback onTap;
  String? semanticLabel;
  bool? isPrevious;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Transform.rotate(
            angle: (isPrevious ?? false) ? 1 : 0,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              semanticLabel: semanticLabel,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
