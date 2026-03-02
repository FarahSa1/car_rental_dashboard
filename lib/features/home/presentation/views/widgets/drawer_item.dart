import 'package:car_rental_dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.drawerItemModel,
  });
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
