import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/car_status_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/car_no_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/details_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/driver_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/earning_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/number_widget.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class CarStatusTable extends StatelessWidget {
  const CarStatusTable({super.key});
  static const List<String> columnsTitles = [
    'No.',
    'Car no.',
    'Driver',
    'Status',
    'Earning',
    '',
  ];

  static const List<CarStatusModel> carsInfoList = [
    CarStatusModel(
      id: '01',
      carNo: '6465',
      driverName: 'Alex Noman',
      driverImage: Assets.imagesTestAvatar1,
      status: 'Completed',
      statusIcon: Assets.imagesGreenStatus,
      earning: '35.44',
    ),
    CarStatusModel(
      id: '02',
      carNo: '5665',
      driverName: 'Razib Rahman',
      driverImage: Assets.imagesTestAvatar2,
      status: 'Pending',
      statusIcon: Assets.imagesBlueStatus,
      earning: '0.00',
    ),
    CarStatusModel(
      id: '03',
      carNo: '1755',
      driverName: 'Luke Norton',
      driverImage: Assets.imagesTestAvatar3,
      status: 'In route',
      statusIcon: Assets.imagesRedStatus,
      earning: '23.50',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: DataTable(
        horizontalMargin: 0,
        dataRowMinHeight: 65,
        dataRowMaxHeight: 65,
        headingRowHeight: 30,
        columns: buildTableHeader(context),
        rows: buildTableBody(),
      ),
    );
  }

 //methods for creating table
  List<DataColumn> buildTableHeader(BuildContext context) {
    return columnsTitles
        .map(
          (title) => DataColumn(
            label: Text(
              title,
              style: AppStyles.styleLight14(
                context,
              ).copyWith(color: AppColors.gray02Light),
            ),
          ),
        )
        .toList();
  }

  List<DataRow> buildTableBody() {
    return carsInfoList.map((car) {
      return DataRow(
        cells: [
          DataCell(NumberWidget(number: car.id)),
          DataCell(CarNoWidget(carNo: car.carNo)),
          DataCell(
            DriverWidget(
              driverImage: car.driverImage,
              driverName: car.driverName,
            ),
          ),
          DataCell(
            StatusWidget(status: car.status, statusIcon: car.statusIcon),
          ),
          DataCell(EarningWidget(earning: car.earning)),
          DataCell(DetailsWidget()),
        ],
      );
    }).toList();
  }
}
