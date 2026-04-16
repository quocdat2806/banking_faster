import 'package:banking_online/core/constants/app_colors.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:banking_online/core/enums/svg_size_type.dart';
import 'package:banking_online/core/utils/svg.dart';
import 'package:banking_online/generated/assets.dart';
import 'package:flutter/material.dart';

class QrScanButton extends StatelessWidget {
  const QrScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToQrScanScreen(context),
      behavior: HitTestBehavior.deferToChild,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorConstants.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppUIConstants.defaultPadding),
          child: SvgUtils.icon(
            assetPath: Assets.svgsQrCode,
            size: SvgSizeType.large,
          ),
        ),
      ),
    );
  }

  void _navigateToQrScanScreen(BuildContext context) {}
}
