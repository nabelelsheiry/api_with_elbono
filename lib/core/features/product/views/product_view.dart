import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/cart/views/cart_view.dart';
import 'package:api_with_elbono/core/features/home/views/root_view.dart';
import 'package:api_with_elbono/core/features/product/model/additional_model.dart';
import 'package:api_with_elbono/core/features/product/widgets/additional_category_widget.dart';
import 'package:api_with_elbono/core/features/product/widgets/spicy_slider_widget.dart';
import 'package:api_with_elbono/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  late final List<AdditionalModel> toppings = [
    AdditionalModel(
      image: AppAssets.tomato,
      name: "Tomato",
    ),
    AdditionalModel(
      image: AppAssets.onions,
      name: "Onions",
    ),
    AdditionalModel(
      image: AppAssets.pickles,
      name: "Pickles",
    ),
    AdditionalModel(
      image: AppAssets.bacons,
      name: "Bacons",
    ),
  ];
  late final List<AdditionalModel> sideOptions = [
    AdditionalModel(
      image: AppAssets.fries,
      name: "Fries",
    ),
    AdditionalModel(
      image: AppAssets.coleslaw,
      name: "Coleslaw",
    ),
    AdditionalModel(
      image: AppAssets.salad,
      name: "Salad",
    ),
    AdditionalModel(
      image: AppAssets.onion,
      name: "Onion",
    ),
  ];
  late double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        height: 110,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: Row(
            children: [
              const Gap(10),
              Column  (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total",style: AppTextStyles.black16w600.copyWith(fontSize: 20),),
                  Gap(10),
                  Text("\$18.19",style: AppTextStyles.black24w600,),
                ],
              ),
              Spacer(),
              CustomButton(
                text: "Add To Cart",
                horizontal: 30,
                vertical: 20,
                right: 10,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const RootView()),
              );
            }
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.slises,width: 172,),
                Gap(10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Customize Your Burger\nto Your Tastes. Ultimate\nExperience",style: AppTextStyles.black14w500,),
                        Gap(18),
                        Text("Spicy",style: AppTextStyles.black13w600,),
                        SpicySliderWidget(value: value,onChanged:(val){
                          setState(() {
                            value = val;

                          });
                        }, ),
                        Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("🥶"),
                            Text("🌶️")
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Gap(30),
            Text("Toppings",style: AppTextStyles.black16w600,),
            Gap(10),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: toppings.length,
                  itemBuilder: (context,index){
                return AdditionalCategoryWidget(categoryName: toppings[index].name, categoryImage: toppings[index].image);
              }),
            ),
            Gap(30),
            Text("Toppings",style: AppTextStyles.black16w600,),
            Gap(10),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sideOptions.length,
                  itemBuilder: (context,index){
                    return AdditionalCategoryWidget(categoryName: sideOptions[index].name, categoryImage: sideOptions[index].image);
                  }),
            ),
            Gap(40),


          ],
        ),
      ),
    );
  }
}
