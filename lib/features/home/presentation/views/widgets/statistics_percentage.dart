import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatisticsPercentage extends StatelessWidget {
  const StatisticsPercentage({
    super.key,
    required this.incomAndExpensesInfoModel,
  });

  final IncomAndExpensesInfoModel incomAndExpensesInfoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Icon(
          incomAndExpensesInfoModel.isDown ? FontAwesomeIcons.arrowDown : FontAwesomeIcons.arrowUp,
          size: 16,
          color: incomAndExpensesInfoModel.isDown ? AppColors.secondaryRed : AppColors.green,
        ),
        const SizedBox(width: 4),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${incomAndExpensesInfoModel.percentage}%',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color:incomAndExpensesInfoModel.isDown ? AppColors.secondaryRed : AppColors.green,),
          ),
        ),
      ],
    );
  }
}
