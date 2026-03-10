import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/left_side.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/right_side.dart';
import 'package:flutter/material.dart';

class EarningSummaryHeader extends StatelessWidget {
  const EarningSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width < SizeConfig.tablet
        ? Column(
          children: [
            LeftSide(), 
            SizedBox(height: 6,),
            RightSide(),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LeftSide(), 
            RightSide()
          ],
        );
  }
}
