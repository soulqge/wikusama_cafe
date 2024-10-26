import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttoncafe extends StatelessWidget {
  final String text;
  final String route;

  const Buttoncafe({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 214,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.black),
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
