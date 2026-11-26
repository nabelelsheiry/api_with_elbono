import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/features/checkOut/views/checkout_view.dart';
import 'package:api_with_elbono/core/features/orderHestory/model/order_hestory_model.dart';
import 'package:api_with_elbono/core/features/orderHestory/widgets/order_hestory_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderHestoryView extends StatefulWidget {
  const OrderHestoryView({super.key});

  @override
  State<OrderHestoryView> createState() => _OrderHestoryViewState();
}

class _OrderHestoryViewState extends State<OrderHestoryView> {
  late final List<OrderHestoryModel> orderList = [
    OrderHestoryModel(
      image: AppAssets.burger1,
      name: "Hamburger",
      quantity: 3,
      price: 20,
    ),
    OrderHestoryModel(
      image: AppAssets.burger1,
      name: "Hamburger",
      quantity: 3,
      price: 20,
    ),
    OrderHestoryModel(
      image: AppAssets.burger1,
      name: "Hamburger",
      quantity: 3,
      price: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          itemCount: orderList.length,
          separatorBuilder: (context, index) => const Gap(16),
          itemBuilder: (context, index) {
            final order = orderList[index];
            return OrderHestoryWidget(
              image: order.image,
              name: order.name,
              quantity: order.quantity,
              price: order.price,
              onReOrder: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutView(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
