import 'package:flutter/material.dart';

class AutoDisposeStateProviderScreen extends StatelessWidget {
  const AutoDisposeStateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Dispose State Provider'),
      ),
      body: const Center(
        child: Text('Auto Dispose State Provider'),
      ),
    );
  }
}
