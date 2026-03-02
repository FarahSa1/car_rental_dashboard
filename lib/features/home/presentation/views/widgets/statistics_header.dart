import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class StatisticsHeader extends StatelessWidget {
  const StatisticsHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium18(
            context,
          ).copyWith(color: AppColors.gray02Light),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffF4F5F7),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Text(
            'Today',
            style: AppStyles.styleRegular12(
              context,
            ).copyWith(color: AppColors.gray02Light),
          ),
        ),
      ],
    );
  }
}
