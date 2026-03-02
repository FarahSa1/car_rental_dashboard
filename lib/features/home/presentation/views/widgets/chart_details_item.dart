import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/pie_chart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChartDetailsItem extends StatelessWidget {
  const ChartDetailsItem({super.key, required this.pieChartItemModel});
  final PieChartItemModel pieChartItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 16, maxHeight: 16),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: pieChartItemModel.color,
            ),
          ),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(pieChartItemModel.title),
      ),
      titleTextStyle: AppStyles.styleRegular16(
        context,
      ).copyWith(color: AppColors.black),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${pieChartItemModel.value}'
            r'$',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: AppColors.black),
          ),
          SizedBox(width: 4),
          Icon(
            pieChartItemModel.isDown
                ? FontAwesomeIcons.arrowDown
                : FontAwesomeIcons.arrowUp,
            size: 14,
            color:
                pieChartItemModel.isDown
                    ? AppColors.secondaryRed
                    : AppColors.green,
          ),
        ],
      ),
    );
  }
}
