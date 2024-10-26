import 'package:flutter/material.dart';
import 'package:wikusama_cafe/pages/admin/home_admin.dart';
import 'package:wikusama_cafe/pages/admin/meja_admin.dart';
import 'package:wikusama_cafe/pages/admin/menu_admin.dart';
import 'package:wikusama_cafe/pages/admin/transaksi_admin.dart';
import 'package:wikusama_cafe/pages/admin/user_admin.dart';
import 'package:wikusama_cafe/pages/kasir/cart_kasir.dart';
import 'package:wikusama_cafe/pages/kasir/favorit_kasir.dart';
import 'package:wikusama_cafe/pages/kasir/home_kasir.dart';
import 'package:wikusama_cafe/pages/kasir/invoice.dart';
import 'package:wikusama_cafe/pages/kasir/profile_kasir.dart';
import 'package:wikusama_cafe/pages/kasir/transaksi_berhasil.dart';
import 'package:wikusama_cafe/pages/login.dart';
import 'package:wikusama_cafe/pages/splash.dart';
import 'package:wikusama_cafe/pages/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash' : (context) => SplashScreen(),
      '/welcome' : (context) => WelcomeScreen(),
      '/login' : (context) => LoginPage(),

      //kasir
      '/home_kasir': (context) => HomeKasirPage(),
      '/favorit_kasir': (context) => FavoritKasirPage(),
      '/cart_kasir' : (context) => CartKasirPage(),
      '/profile_kasir' : (context) => ProfileKasirPage(),
      '/transaksi_berhasil' : (context) => TransaksiBerhasil(),
      '/invoice' : (context) => InvoicePage(),

      //admin
      '/home_admin': (context) => HomeAdminPage(),
      '/user_admin': (context) => UserAdminPage(),
      '/meja_admin' : (context) => MejaAdminPage(),
      '/menu_admin' : (context) => MenuAdminPage(),
      '/transaksi_admin' : (context) => TransaksiAdminPage()

    },
  ));
}

