import 'package:flutter/material.dart';
import 'package:foot_delivery/widgets/bottom_navigation_bar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: const Center(
        child: Text('Wallet Screen'),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
