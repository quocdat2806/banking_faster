import 'package:banking_online/core/constants/app_colors.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:banking_online/core/enums/main_tabs.dart';
import 'package:banking_online/presentation/blocs/main/main_bloc.dart';
import 'package:banking_online/presentation/blocs/main/main_event.dart';
import 'package:banking_online/presentation/blocs/main/main_state.dart';
import 'package:banking_online/presentation/screens/add/add_screen.dart';
import 'package:banking_online/presentation/screens/card%20/card_screen.dart';
import 'package:banking_online/presentation/screens/home/home_screen.dart';
import 'package:banking_online/presentation/screens/main/widgets/qr_scan_button.dart';
import 'package:banking_online/presentation/screens/promotion/promotion_screen.dart';
import 'package:banking_online/presentation/screens/qr_scan/qr_scan.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bottom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<int, Widget> _pageCache = {};

  final Set<int> _initializedPages = {};

  Widget _buildPage(int index) {
    if (_pageCache.containsKey(index)) {
      return _pageCache[index]!;
    }

    Widget page;
    switch (index) {
      case 0:
        page = const HomeScreen();
        // page = BlocProvider(
        //   create: (_) {
        //     return HomeBloc(
        //       sl<TransactionRepository>(),
        //       sl<TransactionCategoryRepository>(),
        //     );
        //   },
        //   child: const _KeepAliveWrapper(child: HomePage()),
        // );
        break;
      case 1:
        page = const CardScreen();
        // page = BlocProvider(
        //   create: (_) {
        //     return ChartBloc(
        //       sl<TransactionRepository>(),
        //       sl<TransactionCategoryRepository>(),
        //     );
        //   },
        //   child: const _KeepAliveWrapper(child: ChartPage()),
        // );
        break;
      case 2:
        page = const QrScanScreen();
        break;
      case 3:
        page = const PromotionScreen();
        break;
      case 4:
        page = const AddScreen();
        break;
      default:
        page = const SizedBox.shrink();
    }

    _pageCache[index] = page;
    _initializedPages.add(index);
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final int currentIndex = state.selectedIndex;
        return Scaffold(
          backgroundColor: AppColorConstants.red,
          body: SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                _buildContent(currentIndex: currentIndex),
                _buildBottomNavigationBar(currentIndex: currentIndex),
                _buildAddTransactionButton(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContent({required int currentIndex}) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: AppUIConstants.bottomNavigationHeight,
        ),
        child: IndexedStack(
          index: currentIndex,
          children: List.generate(MainTabs.totalTypes, (index) {
            if (index == currentIndex || _initializedPages.contains(index)) {
              return _buildPage(index);
            }
            return const SizedBox.shrink();
          }),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar({required int currentIndex}) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: MainBottomNavigationBar(
        currentIndex: currentIndex,
        onTabSelected: (i) {
          context.read<MainBloc>().add(MainSwitchTab(i));
        },
      ),
    );
  }

  Widget _buildAddTransactionButton() {
    return const Positioned(
      bottom: AppUIConstants.topAddTransactionButtonOffset,
      left: 0,
      right: 0,
      child: Center(child: QrScanButton()),
    );
  }
}

class _KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const _KeepAliveWrapper({required this.child});

  @override
  State<_KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<_KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
