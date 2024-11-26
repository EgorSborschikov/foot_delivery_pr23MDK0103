import 'package:flutter/material.dart';
import '../widgets/progress_bar.dart';

class DeliverySuccessfulScreen extends StatelessWidget {
  const DeliverySuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Successful'),
      ),
      body: const Center(
        child: ProgressBar(),
      ),
    );
  }
}
