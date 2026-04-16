import 'package:flutter/material.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:banking_online/core/constants/app_colors.dart';
import 'package:banking_online/core/enums/main_tabs.dart';
import 'package:banking_online/generated/assets.dart';
import 'navigation_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const MainBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: AppUIConstants.bottomNavigationHeight,
        child: ColoredBox(
          color: AppColorConstants.red,
          child: Row(
            children: [
              MainNavigationItem(
                currentIndex: currentIndex,
                index: MainTabs.home.tabIndex,
                iconPath: Assets.svgsHome,
                label: MainTabs.home.label,
                onTap: () => onTabSelected(MainTabs.home.tabIndex),
              ),
              MainNavigationItem(
                currentIndex: currentIndex,
                index: MainTabs.card.tabIndex,
                iconPath: Assets.svgsCreditCard,
                label: MainTabs.card.label,
                onTap: () => onTabSelected(MainTabs.card.tabIndex),
              ),
              const Expanded(child: SizedBox.shrink()),
              MainNavigationItem(
                currentIndex: currentIndex,
                index: MainTabs.promotion.index,
                iconPath: Assets.svgsGift,
                label: MainTabs.promotion.label,
                onTap: () => onTabSelected(MainTabs.promotion.tabIndex),
              ),
              MainNavigationItem(
                currentIndex: currentIndex,
                index: MainTabs.add.index,
                iconPath: Assets.svgsCommand,
                label: MainTabs.add.label,
                onTap: () => onTabSelected(MainTabs.add.tabIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
