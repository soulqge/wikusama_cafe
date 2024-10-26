import 'package:flutter/material.dart';
import 'package:wikusama_cafe/components/navbar_kasir.dart';

class FavoritKasirPage extends StatelessWidget {
  const FavoritKasirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    bottomNavigationBar: BottomNavKasir(selectedItem: 1),
    );
  }
}