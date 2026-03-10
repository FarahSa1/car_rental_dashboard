import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_percentage.dart';
import 'package:flutter/material.dart';

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
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            r'$ ' '${incomAndExpensesInfoModel.amount.toStringAsFixed(2)}',
            style: AppStyles.styleBold28(
              context,
            ).copyWith(color: Color(0xff01150C)),
          ),
        ),
        StatisticsPercentage(incomAndExpensesInfoModel: incomAndExpensesInfoModel),
      ],
    );
  }
}
