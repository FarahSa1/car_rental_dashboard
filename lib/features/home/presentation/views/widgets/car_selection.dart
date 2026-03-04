import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_selection_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/selection_item.dart';
import 'package:flutter/material.dart';

class CarSelection extends StatelessWidget {
  const CarSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSelectionContainer(
      child: SelectionItem(
        showArrow: true,
        svgIcon: Assets.imagesIconsCar,
        title: 'Car number',
      ),
    );
  }
}
