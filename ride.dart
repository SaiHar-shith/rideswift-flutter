import 'package:flutter/material.dart';
import 'confirm.dart';

class RideScreen extends StatelessWidget {
  const RideScreen({super.key});

  Widget rideCard(String name, String price, String time, BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: ListTile(
        leading: const Icon(Icons.directions_car, size: 40),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$time away"),
        trailing: Text(price, style: const TextStyle(fontSize: 18)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ConfirmScreen(ride: name, price: price)),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choose Your Ride")),
      body: Column(
        children: [
          rideCard("Mini", "₹150", "2 mins", context),
          rideCard("Sedan", "₹250", "4 mins", context),
          rideCard("SUV", "₹350", "6 mins", context),
        ],
      ),
    );
  }
}
