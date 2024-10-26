import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentInfo extends StatelessWidget {

  final String title;
  final double price;

  const PaymentInfo({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.sora(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Expanded(child: Container()),
        Text(
          '₱ $price',
          style: GoogleFonts.sora(
              fontSize: 16,
              color: Color.fromRGBO(70, 70, 70, 1),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
