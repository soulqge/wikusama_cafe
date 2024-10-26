import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(27, 174, 118, 1),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Image.asset('assets/placeholder.png'),
    );
  }
}
