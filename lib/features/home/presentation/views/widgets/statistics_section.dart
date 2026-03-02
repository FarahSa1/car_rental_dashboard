import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/hire_and_cancel_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/incom_and_expenses_section.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Todays Statistics',
            style: AppStyles.styleMedium20(
              context,
            ).copyWith(color: AppColors.gray02Dark),
          ),
          Text(
            'Tue, 14 Nov, 2022, 11.30 AM ',
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: AppColors.gray03),
          ),
          const SizedBox(height: 16),
          IncomAndExpensesSection(
            sectionTitle: 'Incom',
            incomAndExpensesInfoModel: IncomAndExpensesInfoModel(amount: 9460.00, isDown: true, percentage: 1.5, comparisonMount: 9940, lastWeekAmount: 22658.00),
          ),
          const SizedBox(height: 16,),
          IncomAndExpensesSection(
            sectionTitle: 'Expenses',
            incomAndExpensesInfoModel: IncomAndExpensesInfoModel(amount: 5660.00, isDown: false, percentage: 2.5, comparisonMount: 5240, lastWeekAmount: 22658.00),
          ),
          const SizedBox(height: 16),
          HireAndCancelSection()
        ],
      ),
    );
  }
}
