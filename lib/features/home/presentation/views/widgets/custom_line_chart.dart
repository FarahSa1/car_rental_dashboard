import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 720 / 182,
      child: LineChart(
        duration: Duration(milliseconds: 150),
        curve: Curves.linear,
        LineChartData(
          minX: -1,
          maxX: 6,
          minY: 0,
          maxY: 300,
          clipData: FlClipData.all(),
          borderData: FlBorderData(show: false),
          titlesData: buildTitlesData(context),
          gridData: buildGridData(),
          lineBarsData: [
            buildPrimaryLine(), 
            buildSecondaryLine(),
          ],
        ),
      ),
    );
  }

//Methods
  LineChartBarData buildPrimaryLine() {
    return LineChartBarData(
      color: AppColors.primaryBlue,
      barWidth: 1.5,
      isCurved: true,
      dotData: FlDotData(show: false),
      spots: const [
        FlSpot(-0.5, 250),
        FlSpot(0, 120),
        FlSpot(0.7, 240),
        FlSpot(1.2, 140),
        FlSpot(1.6, 180),
        FlSpot(2.3, 130),
        FlSpot(2.7, 210),
        FlSpot(3, 190),
        FlSpot(3.3, 220),
        FlSpot(3.6, 170),
        FlSpot(4.1, 220),
        FlSpot(4.5, 200),
        FlSpot(4.7, 200),
        FlSpot(5.1, 170),
        FlSpot(5.5, 240),
      ],
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryBlue.withValues(alpha: 0.4),
            Color(0xffD9D9D9).withValues(alpha: 0.2),
          ],
        ),
      ),
    );
  }

  LineChartBarData buildSecondaryLine() {
    return LineChartBarData(
      color: AppColors.gray02Light.withValues(alpha: 0.6),
      barWidth: 1.5,
      isCurved: true,
      dotData: FlDotData(show: false),
      dashArray: [
        4,
        3,
      ], //index 1 what to draw, index 2 what not to draw as a space
      spots: const [
        FlSpot(-0.5, 110),
        FlSpot(0, 140),
        FlSpot(0.3, 120),
        FlSpot(0.5, 180),
        FlSpot(1, 120),
        FlSpot(1.5, 210),
        FlSpot(1.8, 180),
        FlSpot(2, 190),
        FlSpot(2.1, 180),
        FlSpot(2.9, 110),
        FlSpot(3.5, 150),
        FlSpot(4, 140),
        FlSpot(4.5, 180),
        FlSpot(5, 120),
        FlSpot(5.5, 110),
      ],
    );
  }

  FlGridData buildGridData() {
    return FlGridData(
      drawHorizontalLine: false,
      drawVerticalLine: true,
      verticalInterval: 1,
      getDrawingVerticalLine: (value) {
        return FlLine(
          strokeWidth: 1,
          color: AppColors.gray02Light.withValues(alpha: 0.15),
        );
      },
    );
  }

  FlTitlesData buildTitlesData(BuildContext context) {
    final titleTextStyle = AppStyles.styleRegular12(
      context,
    ).copyWith(color: AppColors.gray02Dark);
    return FlTitlesData(
      show: true,
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          interval: 1,
          showTitles: true,
          reservedSize: 35,
          getTitlesWidget: (value, meta) {
            const months = ["May", "Jun", "Jul", "Aug", "Sep", "Oct"];
            if (value < 0 || value > 5) {
              return const SizedBox();
            }
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(months[value.toInt()], style: titleTextStyle),
            );
          },
        ),
      ),

      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 100,
          reservedSize: 40,
          getTitlesWidget: (value, meta) {
            if (value == 0) {
              return FittedBox(
              fit: BoxFit.scaleDown,
                
                child: Text(r'$0.00', style: titleTextStyle));
            }
            return FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                r'$'
                '${value.toInt()}k',
                style: titleTextStyle,
              ),
            );
          },
        ),
      ),
    );
  }
}
