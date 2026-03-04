import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: SizedBox()),   //or Spacer(),
        Expanded(
          child: SizedBox(
                height: 48,
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.imagesIconsNotification),
                    const SizedBox(width: 40),
                     Flexible(
                      child: CustomBackgroundContainer(
                        horizontaladding: 24,
                        verticalPadding: 12,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Search here',
                                  labelStyle: AppStyles.styleRegular16(
                                    context,
                                  ).copyWith(color: AppColors.gray03),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            // const Spacer(),
                             SvgPicture.asset(
                              Assets.imagesIconsSearch,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ],
    );
  }
}
