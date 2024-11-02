import 'package:flutter/material.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontFamily, String displayFontFamily) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  TextTheme textTheme = baseTextTheme.copyWith(
    bodyLarge: baseTextTheme.bodyLarge?.copyWith(fontFamily: bodyFontFamily),
    bodyMedium: baseTextTheme.bodyMedium?.copyWith(fontFamily: bodyFontFamily),
    bodySmall: baseTextTheme.bodySmall?.copyWith(fontFamily: bodyFontFamily),
    labelLarge: baseTextTheme.labelLarge?.copyWith(fontFamily: bodyFontFamily),
    labelMedium:
        baseTextTheme.labelMedium?.copyWith(fontFamily: bodyFontFamily),
    labelSmall: baseTextTheme.labelSmall?.copyWith(fontFamily: bodyFontFamily),
    displayLarge:
        baseTextTheme.displayLarge?.copyWith(fontFamily: displayFontFamily),
    displayMedium:
        baseTextTheme.displayMedium?.copyWith(fontFamily: displayFontFamily),
    displaySmall:
        baseTextTheme.displaySmall?.copyWith(fontFamily: displayFontFamily),
    headlineLarge:
        baseTextTheme.headlineLarge?.copyWith(fontFamily: displayFontFamily),
    headlineMedium:
        baseTextTheme.headlineMedium?.copyWith(fontFamily: displayFontFamily),
    headlineSmall:
        baseTextTheme.headlineSmall?.copyWith(fontFamily: displayFontFamily),
    titleLarge:
        baseTextTheme.titleLarge?.copyWith(fontFamily: displayFontFamily),
    titleMedium:
        baseTextTheme.titleMedium?.copyWith(fontFamily: displayFontFamily),
    titleSmall:
        baseTextTheme.titleSmall?.copyWith(fontFamily: displayFontFamily),
  );

  return textTheme;
}
