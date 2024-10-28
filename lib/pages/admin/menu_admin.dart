import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/admin/appbar_admin.dart';
import 'package:wikusama_cafe/components/admin/tambah_update_menu.dart';
import 'package:wikusama_cafe/components/navbar_admin.dart';

class MenuAdminPage extends StatefulWidget {
  const MenuAdminPage({super.key});

  @override
  State<MenuAdminPage> createState() => _MenuAdminPageState();
}

class _MenuAdminPageState extends State<MenuAdminPage> {
  final List<Map<String, dynamic>> drinkItems = [
    {
      "name": "Milk Tea",
      "description": "Minuman",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Cappuccino",
      "description": "Minuman",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Strawberry",
      "description": "Minuman",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Matcha",
      "description": "Minuman",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Choco Avocado",
      "description": "Minuman",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
  ];

  final List<Map<String, dynamic>> foodItems = [
    {
      "name": "Beef Slice",
      "description": "Makanan",
      "price": 120.50,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Garlic Bread",
      "description": "Makanan",
      "price": 250.00,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Double Sandwich",
      "description": "Makanan",
      "price": 100.00,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Hot Beef Slice",
      "description": "Makanan",
      "price": 45.00,
      "image": "assets/placeholder.png"
    },
    {
      "name": "Cheese Sandwich",
      "description": "Makanan",
      "price": 64.53,
      "image": "assets/placeholder.png"
    },
  ];

  void _deleteItem(List<Map<String, dynamic>> items, int index) {
    setState(() {
      items.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Item deleted')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
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
                    AppbarAdmin(title: "Menu")

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

            Expanded(
              child: TabBarView(
                children: [

                  buildMenuList(drinkItems, _deleteItem),
                  buildMenuList(foodItems, _deleteItem)
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavAdmin(selectedItem: 3),
      ),
    );
  }
}

Widget buildMenuList(List<Map<String, dynamic>> items, Function deleteItem) {
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
                        style: GoogleFonts.sora(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Rp. ${item['price'].toStringAsFixed(2)}',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    SizedBox(width: 32),
                    Column(
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) =>
                                      TambahUpdateMenu(title: "Update Menu"));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Update"),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: ElevatedButton(
                            onPressed: () => deleteItem(items, index),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Delete"),
                          ),
                        ),
                      ],
                    )
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
