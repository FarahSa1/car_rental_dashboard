import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CarAvailabilityHeader extends StatelessWidget {
  const CarAvailabilityHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text(
        'Car Availability',
        style: AppStyles.styleSemiBold16(
          context,
        ).copyWith(color: AppColors.black),
      ),
    );
  }
}
