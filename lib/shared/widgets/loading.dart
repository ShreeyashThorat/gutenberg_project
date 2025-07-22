import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loading extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final EdgeInsetsGeometry? margin;
  const Loading({
    super.key,
    required this.height,
    required this.width,
    this.margin,
    this.radius = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black.withValues(alpha: 0.3),
      highlightColor: Colors.black.withValues(alpha: 0.2),
      enabled: true,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.black.withValues(alpha: 0.3),
        ),
      ),
    );
  }
}
