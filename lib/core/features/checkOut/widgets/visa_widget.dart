import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class VisaWidget extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final String logo;
  final bool isSelected;
  final VoidCallback? onTap;

  const VisaWidget({
    super.key,
    this.cardType = "Debit card",
    this.cardNumber = "3566 **** **** 0505",
    this.logo = AppAssets.visa,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkSurface : AppColors.surface,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              logo,
              width: 50,
              height: 32,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardType,
                    style: isSelected
                        ? AppTextStyles.white14w500.copyWith(
                            fontWeight: FontWeight.bold,
                          )
                        : AppTextStyles.black14w500.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    cardNumber,
                    style: isSelected
                        ? AppTextStyles.grey12w400.copyWith(
                            color: Colors.grey.shade400,
                          )
                        : AppTextStyles.grey12w400,
                  ),
                ],
              ),
            ),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.white : Colors.grey.shade400,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
