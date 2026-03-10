import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_box.dart';
import 'package:flutter/material.dart';
class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: SizedBox()),   //or Spacer(),
        Expanded(
          child: SearchBox(),
        ),
      ],
    );
  }
}
