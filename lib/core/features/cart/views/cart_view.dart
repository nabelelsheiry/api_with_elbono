import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/cart/model/cart_model.dart';
import 'package:api_with_elbono/core/features/cart/widgets/cart_widget.dart';
import 'package:api_with_elbono/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late final List<CartModel> cartList =[
    CartModel(
      image: AppAssets.burger1,
      name: "Cheeseburger",
      description: "Wendy's Burger",
    ),
    CartModel(
      image: AppAssets.burger2,
      name: "Hamburger ",
      description: "Veggie Burger",
    ),
    CartModel(
      image: AppAssets.burger3,
      name: "Hamburger",
      description: "Chicken Burger",
    ),
    CartModel(
      image: AppAssets.burger4,
      name: "Hamburger",
      description: "Fried Chicken Burger",
    ),
    CartModel(
      image: AppAssets.burger1,
      name: "Cheeseburger",
      description: "Wendy's Burger",
    ),
    CartModel(
      image: AppAssets.burger2,
      name: "Hamburger ",
      description: "Veggie Burger",
    ),
    CartModel(
      image: AppAssets.burger3,
      name: "Hamburger",
      description: "Chicken Burger",
    ),
    CartModel(
      image: AppAssets.burger4,
      name: "Hamburger",
      description: "Fried Chicken Burger",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        const Gap(20),
          Expanded(child: ListView.builder(
            itemCount: cartList.length,
            itemBuilder: (context, index) {
              final item = cartList[index];
            return CartWidget(
              counter:item.quantity ,
              description: item.description,
              name: item.name,
              image: item.image,
              onAdd: (){
                setState(() {
                  item.quantity++;
                });
              },
              onMinus: (){
                if(item.quantity>0){
                  setState(() {
                    item.quantity--;
                  });
                }
              },
              onRemove: (){
                setState(() {
                  cartList.removeAt(index);
                });
              },
            );
          },)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column  (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total",style: AppTextStyles.black16w600.copyWith(fontSize: 20),),
                    Gap(10),
                    Text("\$18.19",style: AppTextStyles.black24w600,),
                  ],
                ),
                Spacer(),
                CustomButton(text: "Add To Cart", horizontal: 30, vertical: 16, right: 16)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
