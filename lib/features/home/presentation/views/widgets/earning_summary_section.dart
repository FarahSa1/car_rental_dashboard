import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/earning_summary_header.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_line_chart.dart';
import 'package:flutter/material.dart';

class EarningSummarySection extends StatelessWidget {
  const EarningSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      verticalPadding: 32,
      horizontaladding: 28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EarningSummaryHeader(), 
          SizedBox(height: 24), 
          CustomLineChart(),
       ],
      ),
    );
  }
}
