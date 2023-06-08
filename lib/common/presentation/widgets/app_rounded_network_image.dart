import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppRoundedNetworkImage extends StatelessWidget {
  final String imageUrl;

  const AppRoundedNetworkImage({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: 20.0.r,
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.transparent,
      );
}
