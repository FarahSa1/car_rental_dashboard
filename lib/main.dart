import 'package:car_rental_dashboard/constants.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/dashboard_home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const CarRentalDashboard(),
  )
  );
}

class CarRentalDashboard extends StatelessWidget {
  const CarRentalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: kFontFamily
      ),
      home: const DashboardHomeView(),
    );
  }
}
