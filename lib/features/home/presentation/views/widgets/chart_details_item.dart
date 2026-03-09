import 'package:car_rental_dashboard/features/home/data/models/pie_chart_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/color_indicator.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/process_title.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/value_section.dart';
import 'package:flutter/material.dart';

class ChartDetailsItem extends StatelessWidget {
  const ChartDetailsItem({super.key, required this.pieChartItemModel});
  final PieChartItemModel pieChartItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          ColorIndicator(color: pieChartItemModel.color),
          const SizedBox(width: 12),
          ProcessTitle(pieChartItemModel: pieChartItemModel),
          const SizedBox(width: 24),
          ValueSection(value: pieChartItemModel.value ,isDown: pieChartItemModel.isDown),
        ],
      ),
    );
  }
}
