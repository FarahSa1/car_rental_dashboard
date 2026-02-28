import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/core/utils/app_styles.dart';
import 'package:car_rental_dashboard/features/home/data/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.primaryBlue,
          ),
          child: ListTile(
            leading: SvgPicture.asset(drawerItemModel.icon),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                drawerItemModel.title,
                style: AppStyles.styleMedium16(
                  context,
                ).copyWith(color: Color(0xFFFFFFFF)),
              ),
            ),
          ),
        ),
        Positioned(
          top: 6,
          bottom: 6,
          child: Container(
            width: 6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.icon,
        colorFilter: ColorFilter.mode(Color(0xffD9D9D9), BlendMode.srcIn),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xFFD9D9D9)),
        ),
      ),
    );
  }
}
