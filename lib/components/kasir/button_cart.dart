import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCart extends StatelessWidget {

  final String route;
  final String text;

  const ButtonCart({super.key, required this.route, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(27, 174, 118, 1),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          text,
          style: GoogleFonts.sora(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
