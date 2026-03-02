import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/features/home/data/models/pie_chart_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/chart_details.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/statistics_header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HireAndCancelSection extends StatefulWidget {
  const HireAndCancelSection({super.key});

  @override
  State<HireAndCancelSection> createState() => _HireAndCancelSectionState();
}

class _HireAndCancelSectionState extends State<HireAndCancelSection> {
  int activeIndex = -1;
  final List<PieChartItemModel> chartItems = [
    PieChartItemModel(
      value: 54,
      color: AppColors.primaryBlue,
      title: 'Total Hired',
      isDown: false,
    ),
    PieChartItemModel(
      value: 20,
      color: AppColors.green,
      title: 'Total Canceled',
      isDown: false,
    ),
    PieChartItemModel(
      value: 26,
      color: AppColors.secondaryRed,
      title: 'Total Pending',
      isDown: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          StatisticsHeader(title: 'Hire vs Cancel'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47.0, vertical: 24.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(buildPieChartData(chartItems: chartItems)),
            ),
          ),
          ChartDetails(chartItems: chartItems),
        ],
      ),
    );
  }

  PieChartData buildPieChartData({
    required List<PieChartItemModel> chartItems,
  }) {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          activeIndex =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: List.generate(chartItems.length, (index) {
        return PieChartSectionData(
          value: chartItems[index].value,
          color: chartItems[index].color,
          showTitle: false,
          radius: activeIndex == index ? 40 : 30,
        );
      }),
    );
  }
}
