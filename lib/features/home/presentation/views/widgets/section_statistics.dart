import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectionStatistics extends StatelessWidget {
  const SectionStatistics({
    super.key,
    required this.incomAndExpensesInfoModel,
  });

  final IncomAndExpensesInfoModel incomAndExpensesInfoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          r'$ ' '${incomAndExpensesInfoModel.amount.toStringAsFixed(2)}',
          style: AppStyles.styleBold28(
            context,
          ).copyWith(color: Color(0xff01150C)),
        ),
        Row(
          children: [
            Icon(
              incomAndExpensesInfoModel.isDown ? FontAwesomeIcons.arrowDown : FontAwesomeIcons.arrowUp,
              size: 16,
              color: incomAndExpensesInfoModel.isDown ? AppColors.secondaryRed : AppColors.green,
            ),
            const SizedBox(width: 4),
            Text(
              '${incomAndExpensesInfoModel.percentage}%',
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color:incomAndExpensesInfoModel.isDown ? AppColors.secondaryRed : AppColors.green,),
            ),
          ],
        ),
      ],
    );
  }
}
