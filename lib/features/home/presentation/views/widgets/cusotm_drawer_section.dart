import 'package:car_rental_dashboard/core/utils/app_colors.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_button.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/custom_drawer_header.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/drawer_items_list_view.dart';
import 'package:flutter/material.dart';

class CusotmDrawerSection extends StatelessWidget {
  const CusotmDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
      decoration: const BoxDecoration(color: AppColors.black),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomDrawerHeader()),
          SliverToBoxAdapter(child: SizedBox(height: 44)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SizedBox(height: 146),
                CustomButton(),
                SizedBox(height: 44),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
