import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:banking_online/core/constants/app_colors.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:banking_online/core/enums/svg_size_type.dart';

class SvgUtils {
  SvgUtils._();

  static Widget icon({
    required String assetPath,
    SvgSizeType size = SvgSizeType.defaultSize,
    Color? color,
  }) {
    final double iconSize = switch (size) {
      SvgSizeType.small => AppUIConstants.smallIconSize,
      SvgSizeType.medium => AppUIConstants.mediumIconSize,
      SvgSizeType.large => AppUIConstants.largeIconSize,
      SvgSizeType.extra => AppUIConstants.extraLargeIconSize,
      SvgSizeType.extraLarge => AppUIConstants.superExtraLargeIconSize,
      _ => AppUIConstants.defaultIconSize,
    };

    return SvgPicture.asset(
      assetPath,
      width: iconSize,
      height: iconSize,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : const ColorFilter.mode(AppColorConstants.black, BlendMode.srcIn),
    );
  }
}
