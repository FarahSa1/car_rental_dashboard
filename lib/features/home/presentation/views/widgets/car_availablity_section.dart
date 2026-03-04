import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_availability_header.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_selection.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/check_button.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/date_and_time_selection.dart';
import 'package:flutter/material.dart';

class CarAvailablitySection extends StatelessWidget {
  const CarAvailablitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      verticalPadding: 32,
      horizontaladding: 28,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarAvailabilityHeader(),
          SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CarSelection(),
                SizedBox(width: 24),
                DateAndTimeSelection(),
                SizedBox(width: 32),
                CheckButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
