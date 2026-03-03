import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.horizontaladding,
    this.verticalPadding,
  });
  final Widget child;
  final double? horizontaladding, verticalPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding ?? 24,
        horizontal: horizontaladding ?? 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFDFDFD),
        boxShadow: [
          BoxShadow(
            color: Color(0xff454550).withValues(alpha: 0.1),
            blurRadius: 27,
            spreadRadius: 2,
            offset: const Offset(0, 2.7),
          ),
        ],
      ),
      child: child,
    );
  }
}
