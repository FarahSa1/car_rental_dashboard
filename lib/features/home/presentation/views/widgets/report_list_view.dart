import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/features/home/data/drawer_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class ReportListView extends StatefulWidget {
  const ReportListView({super.key});

  @override
  State<ReportListView> createState() => _ReportListViewState();
}

class _ReportListViewState extends State<ReportListView> {
 final items = [
    DrawerItemModel(title: 'Payment Details', icon: Assets.imagesIconsPayment),
    DrawerItemModel(title: 'Transactions', icon: Assets.imagesIconsTransaction),
    DrawerItemModel(title: 'Car Report', icon: Assets.imagesIconsReport),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index ) {
              currentIndex = index;
            }
            setState(() {
              
            });
          },
          child: DrawerItem(drawerItemModel: items[index], isActive: currentIndex == index),
        );
      },
    );
  }
}


