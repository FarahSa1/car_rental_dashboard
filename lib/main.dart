import 'package:car_rental_dashboard/constants.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/dashboard_home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarRentalDashboard());
}

class CarRentalDashboard extends StatelessWidget {
  const CarRentalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: kFontFamily
      ),
      home: const DashboardHomeView(),
    );
  }
}
