import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class StatisticsSectionHeader extends StatelessWidget {
  const StatisticsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Text(
            'Todays Statistics',
            style: AppStyles.styleMedium20(
              context,
            ).copyWith(color: AppColors.gray02Dark),
          ),
          Text(
            'Tue, 14 Nov, 2022, 11.30 AM ',
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: AppColors.gray03),
          ),
      ],
    );
  }
}