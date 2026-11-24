import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AdditionalCategoryWidget extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  const AdditionalCategoryWidget({super.key, required this.categoryName, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: AppColors.darkSurface,
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      width: 98,
      child: Column(
        children: [
          Container(
            width: 98,
            height: 80,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            child: Image.asset(categoryImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(categoryName,style: AppTextStyles.white14w500,),
                Spacer(),
                CircleAvatar(
                  backgroundColor: AppColors.red,
                  radius: 10,
                  child: Center(child: Icon(Icons.add,color: AppColors.white,size: 20,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
