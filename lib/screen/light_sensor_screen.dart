import 'package:flutter/material.dart';

class LightSensorScreen extends StatelessWidget {
  const LightSensorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        title: const Text('Light Sensor'),
      ),
      body: const Center(
        child: Text(
          'Light Sensor',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
