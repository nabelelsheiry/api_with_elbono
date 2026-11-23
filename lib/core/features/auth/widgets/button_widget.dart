import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const ButtonWidget({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text(text,style: AppTextStyles.green24w700,)),
      ),
    );
  }
}
