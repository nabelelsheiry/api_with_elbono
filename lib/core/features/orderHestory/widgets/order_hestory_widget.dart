import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderHestoryWidget extends StatelessWidget {
  final String image;
  final String name;
  final int quantity;
  final double price;
  final VoidCallback? onReOrder;

  const   OrderHestoryWidget({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.onReOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.black16w600.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    "Qty : X$quantity",
                    style: AppTextStyles.grey14w400.copyWith(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    "Price : ${price.toStringAsFixed(0)}\$",
                    style: AppTextStyles.grey14w400.copyWith(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Gap(10),
            ],
          ),
          const Gap(16),
          GestureDetector(
            onTap: onReOrder,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "Re Order",
                  style: AppTextStyles.white16w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
