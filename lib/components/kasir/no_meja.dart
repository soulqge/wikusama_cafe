import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoMeja extends StatelessWidget {
  const NoMeja({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            " Nomor Meja", // sesuai no meja?
            style: GoogleFonts.inter(
                fontSize: 12, color: Color.fromRGBO(184, 184, 180, 1)),
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_right,
            color: Color.fromRGBO(184, 184, 180, 1),
          )
        ],
      ),
    );
  }
}
