import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:flutter/material.dart';

class LastWeekSection extends StatelessWidget {
  const LastWeekSection({
    super.key,
    required this.sectionTitle,
    required this.incomAndExpensesInfoModel,
  });

  final String sectionTitle;
  final IncomAndExpensesInfoModel incomAndExpensesInfoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Last week $sectionTitle',
            style: AppStyles.styleMedium14(
              context,
            ).copyWith(color: AppColors.gray02Dark),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            r'$' '${incomAndExpensesInfoModel.lastWeekAmount.toStringAsFixed(2)}',
            style: AppStyles.styleMedium14(
              context,
            ).copyWith(color: AppColors.gray02Dark),
          ),
        ),
      ],
    );
  }
}
