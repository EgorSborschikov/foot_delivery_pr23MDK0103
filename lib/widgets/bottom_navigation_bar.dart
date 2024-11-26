import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/wallet');
        break;
      case 1:
        Navigator.pushNamed(context, '/addPaymentMethod');
        break;
      case 2:
        Navigator.pushNamed(context, '/trackingPackage');
        break;
      case 3:
        Navigator.pushNamed(context, '/deliverySuccessful');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_card),
          label: 'Add Payment Method',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Tracking Package',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_circle),
          label: 'Delivery Successful',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
