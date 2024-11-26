import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      value: 0.7,
      backgroundColor: Colors.grey,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
    );
  }
}
