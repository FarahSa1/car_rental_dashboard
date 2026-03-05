import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CarNoWidget extends StatelessWidget {
  const CarNoWidget({super.key, required this.carNo});
  final String carNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff999999).withValues(alpha: 0.1),
      ),
      child: Text(
        carNo,
        style: AppStyles.styleRegular14(
          context,
        ).copyWith(color: AppColors.black),
      ),
    );
  }
}
