import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/divider_cafe.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';

class InvoicePage extends StatelessWidget {
  final String customerName;
  final String cashierName;
  final List<Map<String, dynamic>> cartItems;

  const InvoicePage({
    super.key,
    required this.customerName,
    required this.cashierName,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Nama Pelanggan: $customerName", 
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Nama Kasir: $cashierName", 
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32),
                DividerCafe(color: Colors.black, height: 2),
                SizedBox(height: 8),
                Column(
                  children: cartItems.map((item) {

                    final quantity = item['quantity'] ?? 0; 
                    final price = item['price'] ?? 0.0; 

                    return Row(
                      children: [
                        Text(
                          item['name'] ?? 'Unknown Item',
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            color: Color.fromRGBO(70, 70, 70, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "x$quantity",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            color: Color.fromRGBO(70, 70, 70, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Rp. ${(price * quantity).toStringAsFixed(2)}', 
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            color: Color.fromRGBO(70, 70, 70, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                Expanded(child: Container()),
                ButtonCart(
                  text: 'Selesai',
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_kasir');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
