import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final Color color;

  CircularWidget(
      {@required this.color,
      @required this.borderRadius,
      @required this.width,
      @required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration:
          BoxDecoration(borderRadius: this.borderRadius, color: this.color),
    );
  }
}
