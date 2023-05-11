import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHeader extends StatelessWidget {
  final String label;

  const AppHeader({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(
          left: 16.0.r,
          top: 48.0.r,
        ),
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppPalette.greenDark),
        ),
      );
}
