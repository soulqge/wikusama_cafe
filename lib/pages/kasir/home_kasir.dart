import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/kasir/appbar_kasir.dart';
import 'package:wikusama_cafe/components/navbar_kasir.dart';
import 'package:wikusama_cafe/components/search_bar.dart';
import 'package:wikusama_cafe/pages/kasir/cart_kasir.dart';

class HomeKasirPage extends StatefulWidget {
  const HomeKasirPage({super.key});

  @override
  _HomeKasirPageState createState() => _HomeKasirPageState();
}

class _HomeKasirPageState extends State<HomeKasirPage> {
  List<Map<String, dynamic>> cartItems = [];

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                color: const Color.fromRGBO(27, 174, 118, 1),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kopi Kap",
                                style: GoogleFonts.sora(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "title",
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                          Expanded(child: Container()),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CartKasirPage(cartItems: cartItems),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const SearchBarKasir(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              TabBar(
                indicatorColor: const Color.fromRGBO(27, 174, 118, 1),
                labelColor: const Color.fromRGBO(27, 174, 118, 1),
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: "Drinks"),
                  Tab(text: "Food"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildMenuList(context, drinkItems),
                    buildMenuList(context, foodItems),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavKasir(selectedItem: 0),
        ),
      ),
    );
  }

  Widget buildMenuList(BuildContext context, List<Map<String, dynamic>> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                          'Rp. ${item['price'].toStringAsFixed(2)}',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () => addToCart(context, item),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void addToCart(BuildContext context, Map<String, dynamic> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add to Cart"),
          content:
              Text("Are you sure you want to add ${item['name']} to the cart?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  cartItems.add(item);
                });
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CartKasirPage(cartItems: cartItems),
                  ),
                );
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }
}
