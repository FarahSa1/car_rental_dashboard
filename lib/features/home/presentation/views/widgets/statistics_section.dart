import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:car_rental_dashboard/features/home/data/models/incom_and_expenses_info_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/hire_and_cancel_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/incom_and_expenses_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_box.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_section_header.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatefulWidget {
  const StatisticsSection({super.key});

  @override
  State<StatisticsSection> createState() => _StatisticsSectionState();
}

class _StatisticsSectionState extends State<StatisticsSection> {
  List<IncomAndExpensesInfoModel> items = [
     IncomAndExpensesInfoModel(
              amount: 9460.00,
              isDown: true,
              percentage: 1.5,
              comparisonMount: 9940,
              lastWeekAmount: 22658.00,
      ),
      IncomAndExpensesInfoModel(
              amount: 5660.00,
              isDown: false,
              percentage: 2.5,
              comparisonMount: 5240,
              lastWeekAmount: 22658.00,
            ),
  ];
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    bool isTablet = width >= SizeConfig.tablet && width < SizeConfig.desktop;
    // print(width);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isTablet) const SearchBox(),
          if (isTablet) const SizedBox(height: 32),
          const StatisticsSectionHeader(),
          const SizedBox(height: 16),
          IncomAndExpensesSection(
            sectionTitle: 'Income',
            incomAndExpensesInfoModel: items[0]
          ),
          const SizedBox(height: 16),
          IncomAndExpensesSection(
            sectionTitle: 'Expenses',
            incomAndExpensesInfoModel: items[1]
          ),
          const SizedBox(height: 16),
          HireAndCancelSection(),
        ],
      ),
    );
  }
}
