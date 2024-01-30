import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class TextBorder extends StatelessWidget {
  final Widget children;

  const TextBorder({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: whiteClr, width: 1.0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: children,
      ),
    );
  }
}
