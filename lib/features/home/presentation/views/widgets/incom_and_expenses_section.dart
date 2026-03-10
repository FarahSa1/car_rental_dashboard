import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/comparing_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/last_week_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/section_statistics.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_header.dart';
import 'package:flutter/material.dart';

class IncomAndExpensesSection extends StatelessWidget {
  const IncomAndExpensesSection({super.key, required this.sectionTitle, required this.incomAndExpensesInfoModel});
  final String sectionTitle;
  final IncomAndExpensesInfoModel incomAndExpensesInfoModel;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatisticsHeader(title: sectionTitle),
          const Divider(height: 24, thickness: 0.5),
          SectionStatistics(incomAndExpensesInfoModel: incomAndExpensesInfoModel),
          const SizedBox(height: 8),
          ComparingWidget(incomAndExpensesInfoModel: incomAndExpensesInfoModel),
          const SizedBox(height: 2),
          LastWeekSection(sectionTitle: sectionTitle, incomAndExpensesInfoModel: incomAndExpensesInfoModel),
        ],
      ),
    );
  }
}
