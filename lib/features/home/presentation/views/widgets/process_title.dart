import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/pie_chart_item_model.dart';
import 'package:flutter/material.dart';

class ProcessTitle extends StatelessWidget {
  const ProcessTitle({
    super.key,
    required this.pieChartItemModel,
  });

  final PieChartItemModel pieChartItemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        pieChartItemModel.title,
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: AppColors.black),
      ),
    );
  }
}
