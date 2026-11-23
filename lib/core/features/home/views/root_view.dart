import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/features/auth/view/profile_view.dart';
import 'package:api_with_elbono/core/features/cart/views/cart_view.dart';
import 'package:api_with_elbono/core/features/home/views/home_view.dart';
import 'package:api_with_elbono/core/features/orderHestory/views/order_hestory_view.dart';
import 'package:flutter/material.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late final  PageController _pageController;
  late int currentIndex =0;
  final List<Widget> tabs = [
    HomeView(),
    CartView(),
    OrderHestoryView(),
    ProfileView(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    _pageController =PageController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: tabs,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30)
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
           backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.white,
            unselectedItemColor: Colors.grey.shade500,
            currentIndex: currentIndex,
            iconSize: 30,
            onTap: (index){
            setState(() {
              currentIndex = index;
            });
            _pageController.jumpToPage(currentIndex);
            },

            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.local_restaurant),label: "OrderHistory"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ]),
      ),
    );
  }
}
