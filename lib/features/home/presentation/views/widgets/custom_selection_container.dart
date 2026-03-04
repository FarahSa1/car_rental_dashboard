import 'package:flutter/material.dart';

class CustomSelectionContainer extends StatelessWidget {
  const CustomSelectionContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffDEDEDE)),
      ),
      child: child,
    );
  }
}
