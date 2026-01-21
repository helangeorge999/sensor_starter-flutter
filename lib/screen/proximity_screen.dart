import 'package:flutter/material.dart';

class ProximityScreen extends StatelessWidget {
  const ProximityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: const Text('Proximity'),
      ),
      body: const Center(
        child: Text(
          'Proximity',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
