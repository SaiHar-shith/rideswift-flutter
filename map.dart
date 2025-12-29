import 'package:flutter/material.dart';
import 'ride.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fake map background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/map.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Top search bar
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: const [
                    TextField(decoration: InputDecoration(hintText: "Pickup location")),
                    TextField(decoration: InputDecoration(hintText: "Drop location")),
                  ],
                ),
              ),
            ),
          ),

          // Bottom panel
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RideScreen()));
              },
              child: const Text("Find Rides"),
            ),
          )
        ],
      ),
    );
  }
}
