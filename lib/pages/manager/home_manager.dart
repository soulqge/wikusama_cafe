import 'package:flutter/material.dart';
import 'package:wikusama_cafe/components/admin/appbar_admin.dart';
import 'package:wikusama_cafe/components/manager/manager_information.dart';
import 'package:wikusama_cafe/components/navbar_manager.dart';

class HomeManagerPage extends StatelessWidget {
  const HomeManagerPage({super.key});

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
                  AppbarAdmin(title: "Dashboard"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                ManagerInformation(
                    title: "Total User", 
                    total: 4, 
                    route: '/user_manager'),
                Expanded(child: Container()),
                ManagerInformation(
                    title: "Total Transaksi",
                    total: 34,
                    route: '/transaki_manager'),
              ],
            ),
          ),
          SizedBox(height: 44),
        ],
      ),
      bottomNavigationBar: BottomNavManager(selectedItem: 0),
    );
  }
}
