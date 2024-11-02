import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5f5790),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe5deff),
      onPrimaryContainer: Color(0xff1b1149),
      secondary: Color(0xff605c71),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe5dff9),
      onSecondaryContainer: Color(0xff1c192b),
      tertiary: Color(0xff7c5264),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd8e6),
      onTertiaryContainer: Color(0xff301120),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff48454e),
      outline: Color(0xff79767f),
      outlineVariant: Color(0xffc9c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffc9bfff),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1b1149),
      primaryFixedDim: Color(0xffc9bfff),
      onPrimaryFixedVariant: Color(0xff473f77),
      secondaryFixed: Color(0xffe5dff9),
      onSecondaryFixed: Color(0xff1c192b),
      secondaryFixedDim: Color(0xffc9c3dc),
      onSecondaryFixedVariant: Color(0xff484459),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff301120),
      tertiaryFixedDim: Color(0xffedb8cd),
      onTertiaryFixedVariant: Color(0xff623b4c),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe5e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff433b73),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff766da8),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff444055),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff767288),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5d3748),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff94687b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff44424a),
      outline: Color(0xff605e67),
      outlineVariant: Color(0xff7c7983),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffc9bfff),
      primaryFixed: Color(0xff766da8),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5d548e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff767288),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5d596f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff94687b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff795062),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe5e1e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff221950),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff433b73),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff232032),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff444055),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff381727),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d3748),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff24232b),
      outline: Color(0xff44424a),
      outlineVariant: Color(0xff44424a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffefe9ff),
      primaryFixed: Color(0xff433b73),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2d245b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff444055),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d2a3d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5d3748),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff442232),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe5e1e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc9bfff),
      surfaceTint: Color(0xffc9bfff),
      onPrimary: Color(0xff31285f),
      primaryContainer: Color(0xff473f77),
      onPrimaryContainer: Color(0xffe5deff),
      secondary: Color(0xffc9c3dc),
      onSecondary: Color(0xff312e41),
      secondaryContainer: Color(0xff484459),
      onSecondaryContainer: Color(0xffe5dff9),
      tertiary: Color(0xffedb8cd),
      onTertiary: Color(0xff482536),
      tertiaryContainer: Color(0xff623b4c),
      onTertiaryContainer: Color(0xffffd8e6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141318),
      onSurface: Color(0xffe5e1e9),
      onSurfaceVariant: Color(0xffc9c5d0),
      outline: Color(0xff938f99),
      outlineVariant: Color(0xff48454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e9),
      inversePrimary: Color(0xff5f5790),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1b1149),
      primaryFixedDim: Color(0xffc9bfff),
      onPrimaryFixedVariant: Color(0xff473f77),
      secondaryFixed: Color(0xffe5dff9),
      onSecondaryFixed: Color(0xff1c192b),
      secondaryFixedDim: Color(0xffc9c3dc),
      onSecondaryFixedVariant: Color(0xff484459),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff301120),
      tertiaryFixedDim: Color(0xffedb8cd),
      onTertiaryFixedVariant: Color(0xff623b4c),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0e0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f25),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcdc3ff),
      surfaceTint: Color(0xffc9bfff),
      onPrimary: Color(0xff160b44),
      primaryContainer: Color(0xff9289c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcdc7e0),
      onSecondary: Color(0xff171426),
      secondaryContainer: Color(0xff928ea5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff1bcd1),
      onTertiary: Color(0xff2a0b1b),
      tertiaryContainer: Color(0xffb38397),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xfffef9ff),
      onSurfaceVariant: Color(0xffcdc9d4),
      outline: Color(0xffa5a1ac),
      outlineVariant: Color(0xff85818c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e9),
      inversePrimary: Color(0xff484078),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff10043f),
      primaryFixedDim: Color(0xffc9bfff),
      onPrimaryFixedVariant: Color(0xff362e65),
      secondaryFixed: Color(0xffe5dff9),
      onSecondaryFixed: Color(0xff110f20),
      secondaryFixedDim: Color(0xffc9c3dc),
      onSecondaryFixedVariant: Color(0xff373447),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff230616),
      tertiaryFixedDim: Color(0xffedb8cd),
      onTertiaryFixedVariant: Color(0xff4f2b3c),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0e0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f25),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffef9ff),
      surfaceTint: Color(0xffc9bfff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcdc3ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffef9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcdc7e0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff1bcd1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffef9ff),
      outline: Color(0xffcdc9d4),
      outlineVariant: Color(0xffcdc9d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e9),
      inversePrimary: Color(0xff2a2158),
      primaryFixed: Color(0xffeae3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcdc3ff),
      onPrimaryFixedVariant: Color(0xff160b44),
      secondaryFixed: Color(0xffeae3fd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcdc7e0),
      onSecondaryFixedVariant: Color(0xff171426),
      tertiaryFixed: Color(0xffffdeea),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff1bcd1),
      onTertiaryFixedVariant: Color(0xff2a0b1b),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0e0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f25),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = const MaterialTheme(TextTheme()).light();

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == const MaterialTheme(TextTheme()).light()) {
      themeData = const MaterialTheme(TextTheme()).dark();
    } else if (_themeData == const MaterialTheme(TextTheme()).dark()) {
      themeData = const MaterialTheme(TextTheme()).light();
    } else {
      themeData = const MaterialTheme(TextTheme()).light();
    }
  }
}
