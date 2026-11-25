import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SuccessCardWidget extends StatelessWidget {
  final VoidCallback onGoBack;

  const SuccessCardWidget({
    super.key,
    required this.onGoBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // GIF replacing true checkmark sign
          Image.asset(
            AppAssets.confettiGif,
            width: 160,
            fit: BoxFit.contain,
          ),
          const Gap(20),
          Text(
            "Success !",
            style: AppTextStyles.green24w700.copyWith(
              color: AppColors.primary,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(16),
          Text(
            "Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.",
            textAlign: TextAlign.center,
            style: AppTextStyles.grey14w400.copyWith(
              color: AppColors.textHint,
              height: 1.5,
              fontSize: 14,
            ),
          ),
          const Gap(32),
          // GestureDetector(
          //   onTap: onGoBack,
          //   child: Container(
          //     width: double.infinity,
          //     padding: const EdgeInsets.symmetric(vertical: 16),
          //     decoration: BoxDecoration(
          //       color: AppColors.primary,
          //       borderRadius: BorderRadius.circular(16),
          //     ),
          //     child: const Center(
          //       child: Text(
          //         "Go Back",
          //         style: AppTextStyles.white16w600,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
