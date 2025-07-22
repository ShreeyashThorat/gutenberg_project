import 'package:flutter/material.dart';

@immutable
class SemanticColors extends ThemeExtension<SemanticColors> {
  final Color success;
  final Color warning;
  final Color info;
  final Color error;

  const SemanticColors({
    required this.success,
    required this.warning,
    required this.info,
    required this.error,
  });

  @override
  SemanticColors copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? error,
    Color? hint,
  }) {
    return SemanticColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      error: error ?? this.error,
    );
  }

  @override
  SemanticColors lerp(ThemeExtension<SemanticColors>? other, double t) {
    if (other is! SemanticColors) return this;
    return SemanticColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      error: Color.lerp(error, other.error, t)!,
    );
  }
}

@immutable
class GreyShades extends ThemeExtension<GreyShades> {
  final Color light;
  final Color medium;
  final Color dark;

  const GreyShades({
    required this.light,
    required this.medium,
    required this.dark,
  });

  @override
  GreyShades copyWith({
    Color? light,
    Color? medium,
    Color? dark,
    Color? error,
    Color? hint,
  }) {
    return GreyShades(
      light: light ?? this.light,
      medium: medium ?? this.medium,
      dark: dark ?? this.dark,
    );
  }

  @override
  GreyShades lerp(ThemeExtension<GreyShades>? other, double t) {
    if (other is! GreyShades) return this;
    return GreyShades(
      light: Color.lerp(light, other.light, t)!,
      medium: Color.lerp(medium, other.medium, t)!,
      dark: Color.lerp(dark, other.dark, t)!,
    );
  }
}
