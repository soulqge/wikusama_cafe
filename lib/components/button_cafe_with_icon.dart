import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCafeWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const ButtonCafeWithIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Color.fromRGBO(184, 184, 180, 1)),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
