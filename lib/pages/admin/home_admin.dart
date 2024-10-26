import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/admin/appbar_admin.dart';
import 'package:wikusama_cafe/components/admin/bottom_sheet_admin.dart';
import 'package:wikusama_cafe/components/admin/formbox_admin.dart';
import 'package:wikusama_cafe/components/admin/information.dart';
import 'package:wikusama_cafe/components/admin/role_dropdown.dart';
import 'package:wikusama_cafe/components/admin/tambah_update_menu.dart';
import 'package:wikusama_cafe/components/kasir/button_cart.dart';
import 'package:wikusama_cafe/components/navbar_admin.dart';

class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({super.key});

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
                Information(
                  title: "Total User",
                  total: 4,
                  bottomSheetContent: BottomSheetAdmin(title: "Tambah User")
                ),
                Expanded(child: Container()),
                Information(
                  title: "Total Meja",
                  total: 15,
                  bottomSheetContent: Center(child: Text("Tambah Meja")),
                )
              ],
            ),
          ),
          SizedBox(height: 44),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Information(
                  title: "Total Transaksi",
                  total: 34,
                  bottomSheetContent: Center(child: Text("Lihat Transaksi")),
                ),
                Expanded(child: Container()),
                Information(
                  title: "Total Menu",
                  total: 24,
                  bottomSheetContent: TambahUpdateMenu(title: 'Tambah Menu',)
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavAdmin(selectedItem: 0),
    );
  }
}
