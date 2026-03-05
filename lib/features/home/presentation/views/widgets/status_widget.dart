import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.status,
    required this.statusIcon,
  });
  final String status, statusIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(statusIcon),
        const SizedBox(width: 16),
        Text(
          status,
          style: AppStyles.styleLight16(
            context,
          ).copyWith(color: AppColors.gray02Light),
        ),
      ],
    );
  }
}
