import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: SvgPicture.asset(Assets.imagesLogo)),
        const SizedBox(width: 4),
        Text(
          'CAR RENT',
          style: AppStyles.styleBold26(
            context,
          ).copyWith(color: Color(0xffFFFFFF)),
        ),
      ],
    );
  }
}
