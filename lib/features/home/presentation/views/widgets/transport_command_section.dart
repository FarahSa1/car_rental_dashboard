import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_availablity_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/earning_summary_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/live_car_status_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_section.dart';
import 'package:flutter/material.dart';

class TransportCommandSection extends StatelessWidget {
  const TransportCommandSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 28, right: 28, top: 32),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchSection(),
          SizedBox(height: 20),
          CarAvailablitySection(),
          SizedBox(height: 20),
          LiveCarStatusSection(),
          SizedBox(height: 20),
          EarningSummarySection()
        ],
      ),
    );
  }
}


