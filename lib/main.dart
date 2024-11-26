import 'package:flutter/material.dart';
import 'package:foot_delivery/pages/add_payment_method_page.dart';
import 'package:foot_delivery/pages/delivery_successful_page.dart';
import 'package:foot_delivery/pages/tracking_packages_page.dart';
import 'package:foot_delivery/pages/wallet_page.dart';

void main() {
  runApp(const FootDelivery());
}

class FootDelivery extends StatelessWidget {
  const FootDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WalletScreen(),
      routes: {
        '/wallet': (context) => const WalletScreen(),
        '/addPaymentMethod': (context) => const AddPaymentMethodScreen(),
        '/trackingPackage': (context) => TrackingPackageScreen(),
        '/deliverySuccessful': (context) => const DeliverySuccessfulScreen(),
      },
    );
  }
}
