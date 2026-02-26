import 'package:car_rental_dashboard/core/widgets/adaptive_layout.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/home_view_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardHomeView extends StatelessWidget {
  const DashboardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const HomeViewDesktopLayout(),
      ),
    );
  }
}
