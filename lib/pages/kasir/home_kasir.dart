import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/kasir/appbar_kasir.dart';
import 'package:wikusama_cafe/components/navbar_kasir.dart';
import 'package:wikusama_cafe/components/search_bar.dart';

class HomeKasirPage extends StatelessWidget {
  const HomeKasirPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample menu data for drinks and food
    final List<Map<String, dynamic>> drinkItems = [
      {
        "name": "Milk Tea",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Cappuccino",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Strawberry",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Matcha",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Choco Avocado",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
    ];

    final List<Map<String, dynamic>> foodItems = [
      {
        "name": "Beef Slice",
        "description": "Chiaro",
        "price": 120.50,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Garlic Bread",
        "description": "Chiaro",
        "price": 250.00,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Double Sandwich",
        "description": "Chiaro",
        "price": 100.00,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Hot Beef Slice",
        "description": "Chiaro",
        "price": 45.00,
        "image": "assets/placeholder.png"
      },
      {
        "name": "Cheese Sandwich",
        "description": "Chiaro",
        "price": 64.53,
        "image": "assets/placeholder.png"
      },
    ];

    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // App bar section
            Container(
              color: const Color.fromRGBO(27, 174, 118, 1),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    AppbarKasir(title: 'Home',),
                    const SizedBox(height: 10),
                    SearchBarKasir(),
                    const SizedBox(height: 10),
                    // Tab bar for Drinks and Food
                  ],
                ),
              ),
            ),
            TabBar(
              indicatorColor: Color.fromRGBO(27, 174, 118, 1),
              labelColor: Color.fromRGBO(27, 174, 118, 1),
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: "Drinks"),
                Tab(text: "Food"),
              ],
            ),
            // TabBarView to switch between drinks and food lists
            Expanded(
              child: TabBarView(
                children: [
                  // Drinks list
                  buildMenuList(drinkItems),
                  // Food list
                  buildMenuList(foodItems),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavKasir(selectedItem: 0),
      ),
    );
  }

  // Function to build the menu list
  Widget buildMenuList(List<Map<String, dynamic>> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image of the item
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      item['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Item name and description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name'],
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item['description'],
                          style: GoogleFonts.sora(
                              fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 26),
                        Text(
                          '₱${item['price'].toStringAsFixed(2)}',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  // Quantity controls
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
              ),
            ),
          ),
        );
      },
    );
  }
}