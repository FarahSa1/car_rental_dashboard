import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/date_dropdown.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Earning Summary',
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: AppColors.black),
        ),
        const SizedBox(width: 32),
        DateDropdown(),
      ],
    );
  }
}
