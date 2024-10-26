
import 'package:flutter/material.dart';

class BottomNavKasir extends StatefulWidget {
  final int selectedItem;
  const BottomNavKasir({super.key, required this.selectedItem});

  @override
  State<BottomNavKasir> createState() => _BottomNavKasirState();
}

class _BottomNavKasirState extends State<BottomNavKasir> {

  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home_kasir');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/favorit_kasir');
    }
    else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/cart_kasir');
    }
    else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/profile_kasir');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined,),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, ),
          label: 'Favorite'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, ),
          label: 'Cart'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined, ),
          label: 'Profile'
        ),
      ],
      selectedItemColor: Color.fromRGBO(27, 174, 118, 1),
      unselectedItemColor: Colors.black26,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}