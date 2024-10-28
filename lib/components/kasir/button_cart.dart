import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCart extends StatelessWidget {
  final String text;
  final void Function() onPressed; // Add this line to declare the onPressed variable

  const ButtonCart({
    super.key,
    required this.text,
    required this.onPressed, // Make sure to assign it here
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, // Assign the onPressed function here
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(27, 174, 118, 1),
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
