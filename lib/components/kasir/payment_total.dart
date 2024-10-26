import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentTotal extends StatelessWidget {
  const PaymentTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.money, size: 24, color: Color.fromRGBO(27, 174, 118, 1)),
          SizedBox(width: 12),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(27, 174, 118, 1),
                borderRadius: BorderRadius.circular(360)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              child: Text(
                "Cash",
                style: GoogleFonts.sora(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 12),
          Text(
            '₱ 74.53',
            style:
                GoogleFonts.sora(fontSize: 12, fontWeight: FontWeight.normal),
          ),
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(128, 128, 128, 1),
            ),
            child: Center(
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ]);
  }
}
