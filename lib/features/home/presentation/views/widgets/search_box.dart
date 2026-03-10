import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/notification_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/seach_section.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    bool isTablet = width > SizeConfig.tablet && width < SizeConfig.desktop;

    return SizedBox(
      height: 48,
      child: Row(
        children: [
          isTablet ? SeachSection() : NotificationSection(),
          const SizedBox(width: 40),
          isTablet ? NotificationSection() : SeachSection(),
        ],
      ),
    );
  }
}
