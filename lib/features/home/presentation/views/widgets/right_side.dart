import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/option_indicator.dart';
import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OptionIndicator(text: 'Last 6 months', color: AppColors.primaryBlue),
        // MediaQuery.sizeOf(context).width < SizeConfig.tablet
        //     ? const Spacer()
        //     : const SizedBox(width: 32),
        const SizedBox(width: 32,),
        OptionIndicator(
          text: 'Same period last year',
          color: AppColors.gray02Light,
        ),
      ],
    );
  }
}
