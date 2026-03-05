import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CommandHeaderTitle extends StatelessWidget {
  const CommandHeaderTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppStyles.styleSemiBold16(
          context,
        ).copyWith(color: AppColors.black),
      ),
    );
  }
}
