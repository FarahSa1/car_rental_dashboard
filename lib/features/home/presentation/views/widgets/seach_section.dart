import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_icon.dart';
import 'package:flutter/material.dart';

class SeachSection extends StatelessWidget {
  const SeachSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
     child: CustomBackgroundContainer(
       bottomPadding: 12, topPadding: 12,
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
            SearchIcon(),
         ],
       ),
     ),
                  );
  }
}
