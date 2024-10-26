import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';

class TransaksiBerhasil extends StatelessWidget {
  const TransaksiBerhasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/placeholder.png'),
              Text(
                "Transaksi Berhasil",
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                "transaksi berhasil silahkan cetak invoice anda di bawah ini",
                style: GoogleFonts.inter(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 36),
              ButtonCart(route: '/invoice', text: 'Print Invoice')
            ],
          ),
        ),
      ),
    );
  }
}
