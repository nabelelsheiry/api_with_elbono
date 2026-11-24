import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SpicySliderWidget extends StatelessWidget {
  final double value;
  final Function(double)? onChanged;
  const SpicySliderWidget({super.key, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Slider(
      divisions: 1,
      padding: EdgeInsets.zero,
      min: 0,
      max: 1,
      value: value,
      onChanged: onChanged,
      activeColor: AppColors.primary,
      inactiveColor: AppColors.grey,

    );
  }
}
