import 'package:flutter/material.dart';
import 'ride.dart';
import 'map.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book a Ride")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Pickup location")),
            TextField(decoration: InputDecoration(labelText: "Drop location")),
            const SizedBox(height: 20),

           ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const MapScreen()));
                },
                child: const Text("Find Ride"),
                )

          ],
        ),
      ),
    );
  }
}
