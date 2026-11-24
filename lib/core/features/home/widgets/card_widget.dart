import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/product/views/product_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardWidget extends StatelessWidget {
  final double rate;
  final String name;
  final String description;
  final String image;

  const CardWidget({super.key, required this.rate, required this.name, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView(),));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 8,right: 8,left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image,width: 160,height: 160,),
              Text(name,style: AppTextStyles.black14w500,),
              Text(description,style: AppTextStyles.black14w500,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Gap(5),
                  Text("$rate"),
                  Spacer(),
                  Icon(CupertinoIcons.heart_fill,color: AppColors.primary,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
