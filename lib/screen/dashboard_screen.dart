import 'package:flutter/material.dart';
import 'accelerometer_screen.dart';
import 'gyroscope_screen.dart';
import 'proximity_screen.dart';
import 'light_sensor_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sensor Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            _buildSensorButton(
              context,
              'Accelerometer',
              Icons.speed,
              Colors.blue,
              const AccelerometerScreen(),
            ),
            _buildSensorButton(
              context,
              'Gyroscope',
              Icons.rotate_right,
              Colors.green,
              const GyroscopeScreen(),
            ),
            _buildSensorButton(
              context,
              'Proximity',
              Icons.sensors,
              Colors.orange,
              const ProximityScreen(),
            ),
            _buildSensorButton(
              context,
              'Light Sensor',
              Icons.light_mode,
              Colors.amber,
              const LightSensorScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSensorButton(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    Widget screen,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
