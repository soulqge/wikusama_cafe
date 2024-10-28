import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';
import 'package:wikusama_cafe/pages/kasir/invoice.dart';

class TransaksiBerhasil extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const TransaksiBerhasil({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    String customerName = "Raffy"; 
    String cashierName = "Amir"; 

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  "Transaksi berhasil, silahkan cetak invoice Anda di bawah ini.",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 36),
                ButtonCart(
                  text: 'Print Invoice',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InvoicePage(
                          customerName: customerName,
                          cashierName: cashierName,
                          cartItems:
                              cartItems, // Pass cart items to InvoicePage
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
