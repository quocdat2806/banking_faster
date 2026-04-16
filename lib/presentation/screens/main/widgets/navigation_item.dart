import 'package:banking_online/core/text_style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:banking_online/core/utils/svg.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:banking_online/core/constants/app_colors.dart';

class MainNavigationItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;
  final VoidCallback? onTap;

  const MainNavigationItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = index == currentIndex;
    final Color iconColor = isActive
        ? AppColorConstants.primary
        : AppColorConstants.white;
    final TextStyle textStyle = isActive
        ? AppTextStyle.yellowS10
        : AppTextStyle.whiteS10;

    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          spacing: AppUIConstants.extraSmallSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgUtils.icon(assetPath: iconPath, color: iconColor),
            Text(label, style: textStyle),
          ],
        ),
      ),
    );
  }
}
