import 'package:car_rental/data/data.models/Car.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your vehicle'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(
            car: cars[index],
          );
        },
      ),
    );
  }
}
