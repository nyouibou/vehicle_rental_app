import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';

class DriversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Drivers'),
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(drivers[index].avatar),
            ),
            title: Text(drivers[index].name),
            subtitle: Text(drivers[index].carModel),
            onTap: () {
              // Handle onTap event
            },
          );
        },
      ),
    );
  }
}

class Driver {
  final String name;
  final String carModel;
  final String avatar;

  Driver({required this.name, required this.carModel, required this.avatar});
}

// Dummy driver data
List<Driver> drivers = [
  Driver(
    name: 'John Doe',
    carModel: 'Toyota Camry',
    avatar: 'assets/images/driver_avatars/driver1.jpg',
  ),
  Driver(
    name: 'Jane Smith',
    carModel: 'Honda Civic',
    avatar: 'assets/images/driver_avatars/driver2.jpg',
  ),
  // Add more dummy data as needed
];
