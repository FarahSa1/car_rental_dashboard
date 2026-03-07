import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DateDropdown extends StatelessWidget {
  const DateDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Mar 2022 - Oct 2022',
          style: AppStyles.styleRegular12(
            context,
          ).copyWith(color: AppColors.gray02Light),
        ),
        SizedBox(width: 8),
        Icon(Icons.keyboard_arrow_down_outlined, size: 16, color: AppColors.gray02Light),
      ],
    );
  }
}
