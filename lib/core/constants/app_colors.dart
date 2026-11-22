import 'package:flutter/material.dart';

/// Colors sampled from the "Hungry?" Food App design.
abstract final class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF104522); // splash, nav bar, buttons, selected chip
  static const Color primaryAlt = Color(0xFF114222); // profile screen background / input borders
  static const Color primaryAccent = Color(0xFF2F5906); // "Cash on Delivery" icon circle

  // Neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color background = Color(0xFFFFFFFF); // screens & item cards
  static const Color surface = Color(0xFFF3F4F6); // unselected chips, Visa card
  static const Color darkSurface = Color(0xFF3E3232); // selected payment card, topping/side labels
  static const Color divider = Color(0xFFAFBDB3);
  static const Color red = Colors.red;

  // Text
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF6A6A6A); // greeting, chip text, subtitles
  static const Color textHint = Color(0xFF8E8E8E); // order/taxes labels, placeholders
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Accents
  static const Color error = Color(0xFFEE2E3C); // add-topping button, checkbox
  static const Color rating = Color(0xFFFF9536); // star

  // Success screen
  static const Color successCard = Color(0xFFFFF9F9);
  static const Color overlay = Color(0xFFBBBABA);
}