import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/admin/appbar_admin.dart';
import 'package:wikusama_cafe/components/navbar_manager.dart';

class User {
  final String name;
  final String role;
  final int number;

  User({required this.name, required this.role, required this.number});
}

class UserManagerPage extends StatefulWidget {
  const UserManagerPage({super.key});

  @override
  _UserManagerPageState createState() => _UserManagerPageState();
}

class _UserManagerPageState extends State<UserManagerPage> {
  // Sample list of users
  List<User> users = [
    User(name: "Tono", role: "Kasir", number: 64),
    User(name: "Jembudi", role: "Manager", number: 23),
    User(name: "Arifin", role: "Manager", number: 32),
    User(name: "Sasa", role: "Admin", number: 33),
    User(name: "Ali", role: "Admin", number: 44),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromRGBO(27, 174, 118, 1),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  AppbarAdmin(title: "User"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              user.role,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "${user.number} x",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Color.fromRGBO(27, 174, 118, 1),
                              ),
                            ),
                            SizedBox(width: 56),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(27, 174, 118, 1),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text("Details"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavManager(selectedItem: 1),
    );
  }
}
