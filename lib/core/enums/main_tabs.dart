import 'package:banking_online/core/constants/app_texts.dart';

enum MainTabs {
  home(0, AppTextConstants.home),
  card(1, AppTextConstants.card),
  promotion(2, AppTextConstants.promotion),
  add(3, AppTextConstants.add);

  const MainTabs(this.tabIndex, this.label);

  final int tabIndex;
  final String label;

  static MainTabs fromIndex(int index) {
    return MainTabs.values.firstWhere(
      (type) => type.tabIndex == index,
      orElse: () => MainTabs.home,
    );
  }

  static const int totalTypes = 4;
}
