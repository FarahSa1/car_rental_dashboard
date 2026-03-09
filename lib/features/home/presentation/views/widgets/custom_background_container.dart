import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key, required this.child, this.leftPadding, this.rightPadding, this.topPadding, this.bottomPadding,
  });
  final Widget child;
    final double? leftPadding, rightPadding, topPadding, bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: bottomPadding ?? 20,
        top: topPadding ?? 24,
        left: leftPadding ?? 24,
        right: rightPadding ?? 24,
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
