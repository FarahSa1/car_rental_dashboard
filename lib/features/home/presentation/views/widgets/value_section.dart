import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ValueSection extends StatelessWidget {
  const ValueSection({
    super.key, required this.value, required this.isDown,
  });

final double value;
  final bool isDown;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '$value\$',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: AppColors.black),
          ),
        ),
        SizedBox(width: 4),
        Icon(
          isDown
              ? FontAwesomeIcons.arrowDown
              : FontAwesomeIcons.arrowUp,
          size: 14,
          color:
              isDown
                  ? AppColors.secondaryRed
                  : AppColors.green,
        ),
      ],
    );
  }
}
