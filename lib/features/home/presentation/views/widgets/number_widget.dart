import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: AppStyles.styleRegular12(context).copyWith(color: AppColors.black),
    );
  }
}
