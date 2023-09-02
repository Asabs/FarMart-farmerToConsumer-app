import 'dart:ui';
import 'package:farmmart/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineGray900 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
      );
  static ButtonStyle get outlineSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        shadowColor: theme.colorScheme.secondaryContainer,
        elevation: 4,
      );
  static ButtonStyle get outlineSecondaryContainerTL23 =>
      ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            23,
          ),
        ),
        shadowColor: theme.colorScheme.secondaryContainer,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
