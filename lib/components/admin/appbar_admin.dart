import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarAdmin extends StatelessWidget {
  
  final String title;

  const AppbarAdmin({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){},
          icon:  Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 15),
        Text(
          title,
          style: GoogleFonts.sora(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.person_outline_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
