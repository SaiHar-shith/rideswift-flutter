import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  final String ride;
  final String price;

  const ConfirmScreen({super.key, required this.ride, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Driver Found")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 80),
            const SizedBox(height: 12),
            const Text("Ravi Kumar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("⭐ 4.8 rating"),
            const SizedBox(height: 20),

            Text("Ride: $ride"),
            Text("Fare: $price"),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text("Finish Ride"),
            )
          ],
        ),
      ),
    );
  }
}
