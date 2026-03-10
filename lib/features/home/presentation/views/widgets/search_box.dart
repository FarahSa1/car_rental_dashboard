import 'package:car_rental_dashboard/features/home/presentation/views/widgets/notification_section.dart';
import 'package:car_rental_dashboard/features/home/presentation/views/widgets/seach_section.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 48,
          child: Row(
            children: [
              NotificationSection(),
              const SizedBox(width: 40),
               SeachSection(),
            ],
          ),
        );
  }
}
