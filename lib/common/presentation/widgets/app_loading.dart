import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  final double width;
  final double height;

  final Color color;

  const AppLoading({
    this.width = 60.0,
    this.height = 60.0,
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: width,
          height: height,
          child: CircularProgressIndicator(
            color: color,
            strokeWidth: 3.0,
          ),
        ),
      );
}
