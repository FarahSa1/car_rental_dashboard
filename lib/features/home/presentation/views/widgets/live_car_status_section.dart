
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_status_table.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/live_car_status_header.dart';
import 'package:flutter/material.dart';

class LiveCarStatusSection extends StatelessWidget {
  const LiveCarStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      bottomPadding: 32, topPadding: 32,
      leftPadding: 28, rightPadding: 28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LiveCarStatusHeader(),
          SizedBox(height: 12),
          CarStatusTable(),
        ],
      ),
    );
  }
}
