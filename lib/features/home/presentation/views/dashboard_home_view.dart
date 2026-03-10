import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:car_rental_dashboard/core/widgets/adaptive_layout.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/cusotm_drawer_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/home_view_desktop_layout.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/home_view_mobile_layout.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/home_view_tablet_layout.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/notification_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_icon.dart';
import 'package:flutter/material.dart';

class DashboardHomeView extends StatefulWidget {
  const DashboardHomeView({super.key});

  @override
  State<DashboardHomeView> createState() => _DashboardHomeViewState();
}

class _DashboardHomeViewState extends State<DashboardHomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xffF8F7F1),
        appBar:
            MediaQuery.sizeOf(context).width < SizeConfig.tablet
                ? AppBar(
                  elevation: 0,
                  backgroundColor: const Color(0xffffffff),
                  leading: GestureDetector(
                    onTap: () => scaffoldKey.currentState!.openDrawer(),
                    child: const Icon(Icons.menu),
                  ),
                  actions: const [
                    NotificationSection(),
                    SizedBox(width: 20),
                    SearchIcon(),
                  ],
                  actionsPadding:const EdgeInsets.only(right: 28),
                )
                : null,
        drawer:
            MediaQuery.sizeOf(context).width < SizeConfig.tablet
                ? CusotmDrawerSection()
                : null,
        body: AdaptiveLayout(
          mobileLayout: (context) => const HomeViewMobileLayout(),
          tabletLayout: (context) => const HomeViewTabletLayout(),
          desktopLayout: (context) => const HomeViewDesktopLayout(),
        ),
      ),
    );
  }
}
