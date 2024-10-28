import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/button_cafe_with_icon.dart';
import 'package:wikusama_cafe/components/divider_cafe.dart';
import 'package:wikusama_cafe/components/kasir/appbar_kasir.dart';
import 'package:wikusama_cafe/components/kasir/box_nama.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';
import 'package:wikusama_cafe/components/kasir/no_meja.dart';
import 'package:wikusama_cafe/components/kasir/payment_info.dart';
import 'package:wikusama_cafe/pages/kasir/transaksi_berhasil.dart';

class CartKasirPage extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;

  const CartKasirPage({super.key, required this.cartItems});

  @override
  _CartKasirPageState createState() => _CartKasirPageState();
}

class _CartKasirPageState extends State<CartKasirPage> {
  final double tax = 10.00;

  double calculateTotal() {
    double subtotal = 0;

    for (var item in widget.cartItems) {
      double price = item['price'] ?? 0.0;
      int quantity = item['quantity'] ?? 1;
      subtotal += price * quantity;
    }

    return subtotal + tax;
  }

  void placeOrder() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TransaksiBerhasil(cartItems: widget.cartItems), // Pass cart items
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(27, 174, 118, 1),
                padding: const EdgeInsets.all(20),
                child: const AppbarKasir(title: 'My Cup'),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BoxNama(),
                    const SizedBox(height: 22),
                    const NoMeja(),
                    const SizedBox(height: 22),
                    const ButtonCafeWithIcon(
                      title: 'Add note',
                      icon: Icons.note_add,
                    ),
                    const SizedBox(height: 22),
                    ...widget.cartItems.map((item) => buildCartItem(item)).toList(),
                    const SizedBox(height: 20),
                    PaymentInfo(title: "Total Payment", price: calculateTotal()),
                    const SizedBox(height: 10),
                    ButtonCart(
                      text: 'Place Order',
                      onPressed: placeOrder,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(Map<String, dynamic> item) {
    int quantity = item['quantity'] ?? 1;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  item['image'] ?? 'assets/default_image.png', // Fallback image
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'] ?? 'Unknown Item',
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    item['description'] ?? 'No Description',
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(184, 184, 180, 1),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (quantity > 1) {
                          quantity--;
                          item['quantity'] = quantity; // Update quantity in cart
                        } else {
                          // Remove the item if quantity is less than or equal to 0
                          widget.cartItems.remove(item);
                        }
                      });
                    },
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  Text('$quantity'),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        quantity++;
                        item['quantity'] = quantity; // Update quantity in cart
                      });
                    },
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ],
          ),
          const DividerCafe(
            color: Color.fromRGBO(244, 244, 244, 1),
            height: 4,
          ),
          const SizedBox(height: 10),
          Text(
            "Payment Summary",
            style: GoogleFonts.sora(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          PaymentInfo(title: "Price", price: item['price'] * quantity ?? 0.0), // Fallback for price
          const SizedBox(height: 10),
          PaymentInfo(title: "PPN", price: tax),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
