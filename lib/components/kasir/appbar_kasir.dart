import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarKasir extends StatelessWidget {

  final String title;

  const AppbarKasir({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.menu,
          color: Colors.white,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kopi Kap",
              style: GoogleFonts.sora(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              title,
              style: GoogleFonts.sora(fontSize: 14, color: Colors.white),
            )
          ],
        ),
        Expanded(child: Container()),
        Icon(
          Icons.person_outline_rounded,
          color: Colors.white,
        )
      ],
    );
  }
}
