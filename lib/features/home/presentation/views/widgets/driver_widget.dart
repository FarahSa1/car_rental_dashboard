import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    super.key,
    required this.driverName,
    required this.driverImage,
  });
  final String driverName, driverImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(driverImage),
        const SizedBox(width: 12),
        Text(
          driverName,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
