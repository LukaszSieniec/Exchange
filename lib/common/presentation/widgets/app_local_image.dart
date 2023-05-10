import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Displays an image from the [asset].
/// Supports vector (SVG) and raster graphics.
class AppLocalImage extends StatelessWidget {
  final String assetName;

  final double? width;
  final double? height;

  final BoxFit fit;

  bool get _isSvg => assetName.endsWith('.svg');

  const AppLocalImage({
    required this.assetName,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    super.key,
  });

  @override
  Widget build(BuildContext context) => _isSvg
      ? SvgPicture.asset(
          assetName,
          width: width,
          height: height,
          fit: fit,
        )
      : Image.asset(
          assetName,
          width: width,
          height: height,
          fit: fit,
        );
}
