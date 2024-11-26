import 'package:flutter/material.dart';
import 'package:foot_delivery/widgets/switches.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Payment Method'),
      ),
      body: const Center(
        child: Switches(),
      ),
    );
  }
}
