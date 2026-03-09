import 'package:flutter/material.dart';

class ColorIndicator extends StatelessWidget {
  const ColorIndicator({
    super.key, required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 16, maxHeight: 16),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
