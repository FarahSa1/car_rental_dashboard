import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:flutter/material.dart';

class ComparingWidget extends StatelessWidget {
  const ComparingWidget({
    super.key,
    required this.incomAndExpensesInfoModel,
  });

  final IncomAndExpensesInfoModel incomAndExpensesInfoModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Compared to \$${incomAndExpensesInfoModel.comparisonMount} yesterday',
      style: AppStyles.styleLight14(
        context,
      ).copyWith(color: AppColors.gray02Light),
    );
  }
}
