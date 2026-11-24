import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/shared/custom_button.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final String name, description, image;
  final int counter;
  final VoidCallback? onAdd;
  final VoidCallback? onMinus;
  final VoidCallback? onRemove;

  const CartWidget({
    super.key,
    required this.name,
    required this.description,
    required this.image,
    required this.counter,
    this.onAdd,
    this.onMinus,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(image, width: 120),
                    Text(name, style: AppTextStyles.black14w500),
                    Text(description, style: AppTextStyles.black14w500),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 170,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: onAdd,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "$counter",
                            style: AppTextStyles.black16w600,
                          ),
                          GestureDetector(
                            onTap: onMinus,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: onRemove,
                        child: CustomButton(
                          text: "Remove",
                          horizontal: 16,
                          vertical: 8,
                          right: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
