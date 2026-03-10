import 'package:car_rental_dashboard/features/home/presentation/views/widgets/cusotm_drawer_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/home_view_mobile_layout.dart';
import 'package:flutter/material.dart';

class HomeViewTabletLayout extends StatelessWidget {
  const HomeViewTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child:  CusotmDrawerSection()),
        Expanded(
          flex: 5,
          child: HomeViewMobileLayout())
      ],
    );
  }
}
