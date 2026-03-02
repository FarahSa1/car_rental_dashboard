//method 1 using SliverList.separated

import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final items = [
    DrawerItemModel(title: 'Dashboard', icon: Assets.imagesIconsDashboard),
    DrawerItemModel(title: 'Drivers', icon: Assets.imagesIconsCar),
    DrawerItemModel(title: 'Bookings', icon: Assets.imagesIconsBooking),
    DrawerItemModel(title: 'Notifications', icon: Assets.imagesIconsBell),
    DrawerItemModel(title: 'Settings', icon: Assets.imagesIconsSettings),
    DrawerItemModel(title: 'Payment Details', icon: Assets.imagesIconsPayment),
    DrawerItemModel(title: 'Transactions', icon: Assets.imagesIconsTransaction),
    DrawerItemModel(title: 'Car Report', icon: Assets.imagesIconsReport),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) {
        if (index == 4) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(height: 32, thickness: 0.3),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Report',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0XFFFFFFFF).withValues(alpha: 0.5)),
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              currentIndex = index;
            }
            setState(() {});
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}



//method 2 using SliverList and SliverChildBuilderDelegate - better method
/*
import 'package:car_rental_dashboard/core/utils/app_images.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/drawer_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const int reportSectionIndex = 5;

  final List<DrawerItemModel> items =  [
    DrawerItemModel(title: 'Dashboard', icon: Assets.imagesIconsDashboard),
    DrawerItemModel(title: 'Drivers', icon: Assets.imagesIconsCar),
    DrawerItemModel(title: 'Bookings', icon: Assets.imagesIconsBooking),
    DrawerItemModel(title: 'Notifications', icon: Assets.imagesIconsBell),
    DrawerItemModel(title: 'Settings', icon: Assets.imagesIconsSettings),
    DrawerItemModel(title: 'Payment Details', icon: Assets.imagesIconsPayment),
    DrawerItemModel(title: 'Transactions', icon: Assets.imagesIconsTransaction),
    DrawerItemModel(title: 'Car Report', icon: Assets.imagesIconsReport),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {

          if (index == reportSectionIndex) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(height: 32, thickness: 0.3),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Report',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(
                          color: const Color(0xFFFFFFFF)
                              .withValues(alpha: 0.5),
                        ),
                  ),
                ),
              ],
            );
          }

          final itemIndex =
              index > reportSectionIndex ? index - 1 : index;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = itemIndex;
                });
              },
              child: DrawerItem(
                drawerItemModel: items[itemIndex],
                isActive: currentIndex == itemIndex,
              ),
            ),
          );
        },
        childCount: items.length + 1,
      ),
    );
  }
}
*/