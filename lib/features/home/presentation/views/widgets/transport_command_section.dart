import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_availablity_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/earning_summary_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/live_car_status_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_section.dart';
import 'package:flutter/material.dart';

class TransportCommandSection extends StatelessWidget {
  const TransportCommandSection({super.key, required this.showSearchSection});
   final bool showSearchSection;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: width < SizeConfig.tablet ? null : Colors.white, 
      padding: EdgeInsets.only(
        left: 28, 
        right: 28,
        top: width < SizeConfig.tablet ? 0 : 32, 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if(showSearchSection) const SearchSection(),
          if(showSearchSection) const SizedBox(height: 20),
          const CarAvailablitySection(),
          const SizedBox(height: 20),
          const LiveCarStatusSection(),
          const SizedBox(height: 20),
          const EarningSummarySection()
        ],
      ),
    );
  }
}


