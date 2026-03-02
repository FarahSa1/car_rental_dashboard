import 'package:car_rental_dashboard/features/home/data/models/pie_chart_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/chart_details_item.dart';
import 'package:flutter/material.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key, required this.chartItems});
  final List<PieChartItemModel> chartItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(chartItems.length, (index) {
        return ChartDetailsItem(pieChartItemModel: chartItems[index]);
      }),
    );
  }
}
