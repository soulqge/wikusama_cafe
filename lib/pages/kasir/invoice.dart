import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/divider_cafe.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "Wikusama Cafe",
                style: GoogleFonts.sora(
                    fontSize: 16,
                    color: Color.fromRGBO(70, 70, 70, 1),
                    fontWeight: FontWeight.w600),
              )),
              SizedBox(height: 6),
              Text(
                "Nama Pelanggan",
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Text(
                "Nama Kasir",
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 32),
              DividerCafe(color: Colors.black, height: 2),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Milk Tea",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        color: Color.fromRGBO(70, 70, 70, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "x1",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        color: Color.fromRGBO(70, 70, 70, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Rp. 74.53',
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        color: Color.fromRGBO(70, 70, 70, 1),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Expanded(child: Container()),
              ButtonCart(route: '/home_kasir', text: 'Selesai')
            ],
          ),
        ),
      ),
    );
  }
}
