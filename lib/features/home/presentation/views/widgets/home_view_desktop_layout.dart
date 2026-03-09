import 'package:car_rental_dashboard/features/home/presentation/views/widgets/cusotm_drawer_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/transport_command_section.dart';
import 'package:flutter/material.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CusotmDrawerSection()),
        Expanded(
          flex: 10,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 3, child: StatisticsSection()),
                    Expanded(flex: 7, child: TransportCommandSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
