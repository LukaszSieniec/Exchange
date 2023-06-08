import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// [priceChange24h] - provides information in which direction
/// the cryptocurrency has changed its price in the last 24 hours.
class TrendingStatus extends StatelessWidget {
  final double priceChange24h;

  const TrendingStatus({
    required this.priceChange24h,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Icon(
        size: 35.0.r,
        priceChange24h > 0
            ? Icons.trending_up_outlined
            : Icons.trending_down_outlined,
        color: priceChange24h > 0 ? AppPalette.greenBright : AppPalette.red,
      );
}
