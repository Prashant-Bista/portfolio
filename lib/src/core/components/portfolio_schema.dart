import 'package:flutter/material.dart';
class AppTheme {
  // Colors...

  static const Color _background = Color(0xFF0A0C0F);
  static const Color _surface = Color(0xFF11151A);
  static const Color _surfaceVariant = Color(0xFF171C22);

  static const Color _primary = Color(0xFFB9FF45);
  static const Color _primaryDark = Color(0xFF8EDB20);

  static const Color _textPrimary = Color(0xFFF5F7F2);
  static const Color _textSecondary = Color(0xFF9BA3AD);

  static const Color _border = Color(0xFF2D3037);

  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,

    primary: _primary,
    onPrimary: Color(0xFF111500),

    secondary: _primaryDark,
    onSecondary: Color(0xFF101500),

    surface: _background,
    onSurface: _textPrimary,

    surfaceContainerLowest: Color(0xFF080A0C),
    surfaceContainerLow: _background,
    surfaceContainer: _surface,
    surfaceContainerHigh: _surfaceVariant,
    surfaceContainerHighest: Color(0xFF1D2228),

    onSurfaceVariant: _textSecondary,

    outline: _border,
    outlineVariant: Color(0xFF22272D),

    error: Color(0xFFFF6B6B),
    onError: Color(0xFF2A0000),

    inverseSurface: _textPrimary,
    onInverseSurface: _background,
    inversePrimary: Color(0xFF4E7500),
  );

  static TextTheme get textTheme {
    final base = TextTheme(
    );

    return base.copyWith(
      // Hero heading
      displayLarge: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 64,
        height: 1.05,
        fontWeight: FontWeight.w300,
        letterSpacing: -2.5,
        color: _textPrimary,
      ),

      displayMedium: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 52,
        height: 1.08,
        fontWeight: FontWeight.w300,
        letterSpacing: -2,
        color: _textPrimary,
      ),

      displaySmall: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 42,
        height: 1.1,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: _textPrimary,
      ),

      // Section headings
      headlineLarge: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 36,
        height: 1.15,
        fontWeight: FontWeight.w400,
        letterSpacing: -1,
        color: _textPrimary,
      ),

      headlineMedium: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 30,
        height: 1.2,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.7,
        color: _textPrimary,
      ),

      headlineSmall: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 24,
        height: 1.25,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.3,
        color: _textPrimary,
      ),

      // Body
      bodyLarge: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 17,
        height: 1.6,
        fontWeight: FontWeight.w400,
        color: _textSecondary,
      ),

      bodyMedium: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 15,
        height: 1.55,
        fontWeight: FontWeight.w400,
        color: _textSecondary,
      ),

      bodySmall: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 13,
        height: 1.45,
        fontWeight: FontWeight.w400,
        color: _textSecondary,
      ),

      // Buttons / navigation
      labelLarge: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 14,
        height: 1.2,
        fontWeight: FontWeight.w500,
        color: _textPrimary,
      ),

      labelMedium: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 12,
        height: 1.2,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.2,
        color: _textPrimary,
      ),

      labelSmall: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 10,
        height: 1.2,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.8,
        color: _textSecondary,
      ),

      titleLarge: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: _textPrimary,
      ),

      titleMedium: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _textPrimary,
      ),

      titleSmall: TextStyle(
fontFamily: "SpaceGrotesk",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _textPrimary,
      ),
    );
  }

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: _background,
      textTheme: textTheme,

      dividerColor: _border,

      appBarTheme: AppBarTheme(
        backgroundColor: _background,
        foregroundColor: _textPrimary,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge,
      ),

      cardTheme: CardThemeData(
        color: _surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: _border,
          ),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primary,
          foregroundColor: const Color(0xFF111500),
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _textPrimary,
          side: const BorderSide(
            color: _border,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _surface,
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: _textSecondary,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _border,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: _primary,
          ),
        ),
      ),
    );
  }
}