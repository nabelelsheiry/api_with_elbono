import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/features/auth/view/profile_view.dart';
import 'package:api_with_elbono/core/features/cart/views/cart_view.dart';
import 'package:api_with_elbono/core/features/home/views/home_view.dart';
import 'package:api_with_elbono/core/features/orderHestory/views/order_hestory_view.dart';
import 'package:flutter/material.dart';

class RootView extends StatefulWidget {
  final int initialIndex;

  const RootView({
    super.key,
    this.initialIndex = 0,
  });

  static void changeTab(BuildContext context, int index) {
    final state = context.findAncestorStateOfType<_RootViewState>();
    if (state != null) {
      state.changeTab(index);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RootView(initialIndex: index),
        ),
      );
    }
  }

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late final PageController _pageController;
  late int currentIndex;

  final List<Widget> tabs = const [
    HomeView(),
    CartView(),
    OrderHestoryView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: currentIndex);
  }

  void changeTab(int index) {
    if (index >= 0 && index < tabs.length) {
      setState(() {
        currentIndex = index;
      });
      _pageController.jumpToPage(index);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: tabs,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.white,
          unselectedItemColor: Colors.grey.shade500,
          currentIndex: currentIndex,
          iconSize: 30,
          onTap: changeTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant),
              label: "OrderHistory",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
