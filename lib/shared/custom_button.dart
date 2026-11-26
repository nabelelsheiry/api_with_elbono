import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double horizontal;
  final double vertical;
  final double right;
  final void Function()? onTap;
  const CustomButton({super.key, required this.text, required this.horizontal, required this.vertical, required this.right, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: right),
        padding: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Center(child: Text(text,style: AppTextStyles.white18w600,),),
      ),
    );
  }
}
