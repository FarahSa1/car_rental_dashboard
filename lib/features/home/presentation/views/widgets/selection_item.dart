import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectionItem extends StatelessWidget {
  const SelectionItem({super.key, required this.svgIcon, required this.title, required this.showArrow});

  final String svgIcon, title;
  final bool showArrow;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: SvgPicture.asset(
            svgIcon,
            colorFilter: ColorFilter.mode(
              AppColors.gray02Light,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          title,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: AppColors.gray02Light),
        ),
        SizedBox(width: 16),
         if (showArrow)
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: AppColors.gray02Light,
                  ),
              )
      
      ],
    );
  }
}
