import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/command_header_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveCarStatusHeader extends StatelessWidget {
  const LiveCarStatusHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        const CommandHeaderTitle(title: 'Live Car Status',),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesIconsFilter),
            const SizedBox(width: 12,),
            Text('Filter', style: AppStyles.styleMedium16(context).copyWith(color: AppColors.gray02Dark),)
          ],
        )
      ],
    );
  }
}