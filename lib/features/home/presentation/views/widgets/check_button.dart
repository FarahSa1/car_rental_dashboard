import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36,vertical: 12),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(4),
         color: AppColors.primaryBlue
      ),
      child: Text('Check', style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
    );
  }
}
