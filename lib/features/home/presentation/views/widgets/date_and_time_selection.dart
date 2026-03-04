import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_selection_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/selection_item.dart';
import 'package:flutter/material.dart';

class DateAndTimeSelection extends StatelessWidget {
  const DateAndTimeSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSelectionContainer(
      child: IntrinsicHeight(
        child: Row(
          children: [
            SelectionItem(
              showArrow: false,
              svgIcon: Assets.imagesIconsCalendarCheck,
              title: 'Nov 20, 2022',
            ),
            VerticalDivider(color: Color(0xFFDEDEDE),width: 0, ),
            SelectionItem(
              showArrow: true,
              svgIcon: Assets.imagesIconsClock2,
              title: '10 AM',
            ),
          ],
        ),
      ), 
    );
  }
}
