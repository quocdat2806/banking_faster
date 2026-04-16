import 'package:banking_online/core/constants/app_colors.dart';
import 'package:banking_online/core/constants/app_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: SingleChildScrollView(
        child: Column(
          spacing: AppUIConstants.defaultSpacing,
          children: [
            _buildHeader(),
            _buildMainMenu(),
            _buildPromoBanner(),
            _buildServiceGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(
        left: AppUIConstants.defaultPadding,
        right: AppUIConstants.defaultPadding,
        bottom: AppUIConstants.defaultPadding,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppUIConstants.extraLargeBorderRadius),
          bottomRight: Radius.circular(AppUIConstants.extraLargeBorderRadius),
        ),
        color: AppColorConstants.red,
      ),
      child: Column(
        spacing: AppUIConstants.smallSpacing,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "MB",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  // Icon AI
                  // Icon Notification
                  // Icon Menu burger
                  const Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ],
          ),
          // const SizedBox(height: 20),
          _buildBalanceCard(),
        ],
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(40),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          // Circle Avatar User ở đây
          const CircleAvatar(radius: 25, backgroundColor: Colors.white24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tổng số dư VND >",
                  style: TextStyle(color: Colors.white70),
                ),
                const Text(
                  "*** *** VND",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.visibility_off, color: Colors.white70),
        ],
      ),
    );
  }

  Widget _buildMainMenu() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem("Chuyển tiền"), // Icon Chuyển tiền
          _buildMenuItem("Nạp tiền\nđiện thoại"), // Icon Nạp tiền
          _buildMenuItem("Tiền gửi"), // Icon Tiền gửi
          _buildMenuItem("Vay nhanh"), // Icon Vay nhanh
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape: BoxShape.circle,
          ),
          // child: Icon(...) // Icon placeholder
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(colors: [Colors.blue, Colors.purple]),
      ),
      child: const Center(
        child: Text("Banner Quảng Cáo", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildServiceGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mua sắm - Giải trí - Đầu tư",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 16),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            children: [
              _buildGridItem("Vua xổ số"), // Icon Xổ số
              _buildGridItem("Data 4G"), // Icon Data
              _buildGridItem("Thẻ Game"), // Icon Game
              _buildGridItem("Vé máy bay"), // Icon Vé máy bay
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String label) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          color: Colors.grey[200],
        ), // Icon Placeholder
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 11),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
