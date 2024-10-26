import 'package:flutter/material.dart';

class SearchBarKasir extends StatelessWidget {
  const SearchBarKasir({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon:
              const Icon(Icons.search, color: Color.fromRGBO(27, 174, 118, 1)),
          hintText: "Search...",
          border: InputBorder.none, // No visible border
        ),
        onChanged: (query) {
          // Handle search logic here
          print("Searching for: $query");
        },
      ),
    );
  }
}
