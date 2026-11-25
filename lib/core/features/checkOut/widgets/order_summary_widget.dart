import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderSummaryWidget extends StatelessWidget {
  final double order;
  final double taxes;
  final double deliveryFees;
  final double total;
  final String estimatedDeliveryTime;

  const OrderSummaryWidget({
    super.key,
    this.order = 16.48,
    this.taxes = 0.3,
    this.deliveryFees = 1.5,
    this.total = 18.19,
    this.estimatedDeliveryTime = "15 - 30 mins",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order summary",
          style: AppTextStyles.black16w600.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(16),
        _buildRow("Order", "\$$order"),
        const Gap(10),
        _buildRow("Taxes", "\$$taxes"),
        const Gap(10),
        _buildRow("Delivery fees", "\$$deliveryFees"),
        const Gap(12),
        const Divider(color: Color(0xFFE5E7EB), thickness: 1),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: AppTextStyles.black16w600.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$$total",
              style: AppTextStyles.black16w600.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Gap(14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Estimated delivery time:",
              style: AppTextStyles.grey14w400.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              estimatedDeliveryTime,
              style: AppTextStyles.black14w500.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.grey14w400.copyWith(
            color: AppColors.textHint,
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: AppTextStyles.grey14w400.copyWith(
            color: AppColors.textHint,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
