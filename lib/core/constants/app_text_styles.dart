import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTextStyles {
  // White
  static const TextStyle white12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static const TextStyle white12w500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static const TextStyle white13w500 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static const TextStyle white14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static const TextStyle white18w600 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // Black
  static const TextStyle black12w500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle black13w600 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle black14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle black16w600 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle black24w600 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Green (primary)
  static const TextStyle green24w700 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static const TextStyle green32w900 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  );

  // Grey (textSecondary)
  static const TextStyle grey12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle grey12w500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static const TextStyle grey14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
  static const TextStyle green14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  // Light grey (textHint)
  static const TextStyle lightGrey11w400 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );

  static const TextStyle lightGrey12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );
}