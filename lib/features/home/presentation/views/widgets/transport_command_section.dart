import 'package:car_rental_dashboard/features/home/presentation/views/widgets/search_section.dart';
import 'package:flutter/material.dart';

class TransportCommandSection extends StatelessWidget {
  const TransportCommandSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 28),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         SearchSection(),
         SizedBox(height: 20,),
        ],
      ),
    );
  }
}
