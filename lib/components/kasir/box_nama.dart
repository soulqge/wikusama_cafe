import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxNama extends StatelessWidget {
  const BoxNama({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black)),
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Nama", // sesuai nama asli
            style: GoogleFonts.inter(
                fontSize: 12, color: Color.fromRGBO(184, 184, 180, 1)),
          )),
    );
  }
}
