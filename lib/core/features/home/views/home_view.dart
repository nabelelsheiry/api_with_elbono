import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/auth/widgets/text_form_field_widget.dart';
import 'package:api_with_elbono/core/features/home/model/product_model.dart';
import 'package:api_with_elbono/core/features/home/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 late TextEditingController _searchController ;
 late final List<String> categories =[
   "All",
   "Compo",
   "Sliders",
   "Classic",

 ];
 late final List<ProductModel> products = [
   ProductModel(
     image: AppAssets.burger1,
     category: "Cheeseburger",
     name: "Cheeseburger",
     description: "Wendy's Burger",
     rate: 4.9,
   ),
   ProductModel(
     image: AppAssets.burger2,
     category: "Hamburger",
     name: "Hamburger ",
     description: "Veggie Burger",
     rate: 4.8,
   ),
   ProductModel(
     image: AppAssets.burger3,
     category: "Hamburger",
     name: "Hamburger",
     description: "Chicken Burger",
     rate: 4.6,
   ),
   ProductModel(
     image: AppAssets.burger4,
     category: "Hamburger",
     name: "Hamburger",
     description: "Fried Chicken Burger",
     rate: 4.5,
   ),
   ProductModel(
     image: AppAssets.burger1,
     category: "Cheeseburger",
     name: "Cheeseburger",
     description: "Wendy's Burger",
     rate: 4.9,
   ),
   ProductModel(
     image: AppAssets.burger2,
     category: "Hamburger",
     name: "Hamburger ",
     description: "Veggie Burger",
     rate: 4.8,
   ),
   ProductModel(
     image: AppAssets.burger3,
     category: "Hamburger",
     name: "Hamburger",
     description: "Chicken Burger",
     rate: 4.6,
   ),
   ProductModel(
     image: AppAssets.burger4,
     category: "Hamburger",
     name: "Hamburger",
     description: "Fried Chicken Burger",
     rate: 4.5,
   ),
 ];
 late int selectedIndex =0;
 @override
  void initState() {
    // TODO: implement initState
 _searchController  = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 16,right: 10),
              child: Row(
                children: [
                  Hero(tag: "logo",child: Image.asset(AppAssets.branding, color: AppColors.primary,width: 190,),),
                  Spacer(),
                  CircleAvatar(radius: 30,backgroundColor: AppColors.surface,child: Icon(CupertinoIcons.person_alt,size: 30,color: AppColors.primary,),),
                ],
              ),
            ),
            Row(
              children: [
                Gap(20),
                Text("Hello, Elbono",style: AppTextStyles.grey14w400,),
              ],
            ),
            Gap(17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormFieldWidget(hintText: "Search", controller: _searchController,prefixIcon: Icon(Icons.search),),
            ),
            Gap(25),
            SizedBox(
              height: 50,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                  shrinkWrap: true,itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                    decoration:BoxDecoration(
                      color: selectedIndex == index? AppColors.primary : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(child: Text(categories[index],style:selectedIndex == index?  AppTextStyles.white14w500: AppTextStyles.green14w500,),),
                  ),
                );
              }),
            ),
            Expanded(
              child: GridView.builder( itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 10,crossAxisSpacing: 10),

                  padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                  itemBuilder:(context, index) {
                    return CardWidget(rate: products[index].rate,
                        name: products[index].name,
                        description: products[index].description,
                        image: products[index].image);
                  },),
            ),

          ],
        ),
      ),
    );
  }
}
