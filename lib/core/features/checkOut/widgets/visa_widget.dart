import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class VisaWidget extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final String logo;
  final bool isSelected;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? subtitleColor;
  final Color? radioColor;
  final VoidCallback? onTap;

  const VisaWidget({
    super.key,
    this.cardType = "Debit card",
    this.cardNumber = "3566 **** **** 0505",
    this.logo = AppAssets.visa,
    this.isSelected = false,
    this.backgroundColor,
    this.textColor,
    this.subtitleColor,
    this.radioColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBgColor = backgroundColor ??
        (isSelected ? AppColors.darkSurface : AppColors.surface);
    final effectiveTextColor = textColor ??
        (isSelected ? AppColors.white : AppColors.textPrimary);
    final effectiveSubtitleColor = subtitleColor ??
        (isSelected ? Colors.grey.shade400 : AppColors.textSecondary);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: effectiveBgColor,
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
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: effectiveTextColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    cardNumber,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: effectiveSubtitleColor,
                    ),
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
                  color: isSelected ? (radioColor ?? AppColors.primary) : Colors.grey.shade400,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: radioColor ?? AppColors.primary,
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
