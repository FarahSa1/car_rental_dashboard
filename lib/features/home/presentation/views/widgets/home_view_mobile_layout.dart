import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/transport_command_section.dart';
import 'package:flutter/material.dart';

class HomeViewMobileLayout extends StatelessWidget {
  const HomeViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: StatisticsSection()),
        SliverToBoxAdapter(
          child: TransportCommandSection(showSearchSection: false),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 24,),
        )
      ],
    );
  }
}
