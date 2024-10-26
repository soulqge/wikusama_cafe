import 'package:flutter/material.dart';

class DividerCafe extends StatelessWidget {

  final Color color;
  final double height;

  const DividerCafe({super.key, required this.color, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: height,
    );
  }
}
