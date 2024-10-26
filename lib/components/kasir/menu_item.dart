import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItemCart extends StatelessWidget {
  const MenuItemCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/placeholder.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Milk Tea",
              style:
                  GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              "With Chocolate",
              style: GoogleFonts.sora(
                  fontSize: 12, color: Color.fromRGBO(184, 184, 180, 1)),
            ),
          ],
        ),
        Expanded(child: Container()),
        Row(
          children: [
            IconButton(
              onPressed: () {
                // Decrease quantity logic
              },
              icon: const Icon(Icons.remove_circle_outline),
            ),
            const Text('1'), // Display quantity here
            IconButton(
              onPressed: () {
                // Increase quantity logic
              },
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      ],
    );
  }
}
