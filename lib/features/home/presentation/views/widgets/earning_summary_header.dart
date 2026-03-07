import 'package:car_rental_dashboard/features/home/presentation/views/widgets/left_side.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/right_side.dart';
import 'package:flutter/material.dart';

class EarningSummaryHeader extends StatelessWidget {
  const EarningSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeftSide(),
        RightSide(),
      ],
    );
  }
}
