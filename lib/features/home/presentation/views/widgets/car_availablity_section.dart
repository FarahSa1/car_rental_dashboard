import 'package:car_rental_dashboard/features/home/presentation/views/widgets/command_header_title.dart';
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
      bottomPadding: 40, topPadding: 32,
      leftPadding: 28, rightPadding: 28,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CommandHeaderTitle(title: 'Car Availability'),
          SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
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
