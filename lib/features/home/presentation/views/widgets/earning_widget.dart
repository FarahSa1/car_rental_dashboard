import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class EarningWidget extends StatelessWidget {
  const EarningWidget({super.key, required this.earning});
  final String earning;
  @override
  Widget build(BuildContext context) {
    return Text(
      '\$ $earning',
      style: AppStyles.styleLight16(
        context,
      ).copyWith(color: AppColors.gray02Light),
    );
  }
}
