import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/button_cafe_with_icon.dart';
import 'package:wikusama_cafe/components/divider_cafe.dart';
import 'package:wikusama_cafe/components/kasir/appbar_kasir.dart';
import 'package:wikusama_cafe/components/kasir/box_nama.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';
import 'package:wikusama_cafe/components/kasir/menu_item.dart';
import 'package:wikusama_cafe/components/kasir/no_meja.dart';
import 'package:wikusama_cafe/components/kasir/payment_info.dart';
import 'package:wikusama_cafe/components/kasir/payment_total.dart';
import 'package:wikusama_cafe/components/navbar_kasir.dart';

class CartKasirPage extends StatelessWidget {
  const CartKasirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              //appbar
              color: Color.fromRGBO(27, 174, 118, 1),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    AppbarKasir(
                      title: 'My Cup',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxNama(),
                    SizedBox(height: 22),
                    NoMeja(),
                    SizedBox(height: 22),
                    ButtonCafeWithIcon(
                        title: "Add Note", icon: Icons.edit_document),
                    SizedBox(height: 59),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //menu item & quantity
                            MenuItemCart(),
                            // divider
                            DividerCafe(
                                color: Color.fromRGBO(244, 244, 244, 1),
                                height: 4),
                            SizedBox(height: 10),
                            // title
                            Text(
                              "Payment Summary",
                              style: GoogleFonts.sora(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            PaymentInfo(title: "Price", price: 64.53),
                            SizedBox(height: 10),
                            PaymentInfo(title: "PPN", price: 10.00),
                            SizedBox(height: 10),
                            DividerCafe(
                                color: Color.fromRGBO(244, 244, 244, 1),
                                height: 2),
                            SizedBox(height: 15),
                            PaymentInfo(title: "Total Payment", price: 74.53),
                            SizedBox(height: 10),
                            PaymentTotal(),
                            SizedBox(height: 10),
                            ButtonCart(route: '/transaksi_berhasil', text: 'Place Order')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavKasir(selectedItem: 2),
    );
  }
}
