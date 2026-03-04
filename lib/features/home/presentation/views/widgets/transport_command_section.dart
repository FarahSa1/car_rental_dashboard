import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_availablity_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/selection_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransportCommandSection extends StatelessWidget {
  const TransportCommandSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 28),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SearchSection(),
          SizedBox(height: 20),
          CarAvailablitySection(),
        ],
      ),
    );
  }
}
