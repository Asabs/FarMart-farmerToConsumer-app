import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumMetropolisGray500 =>
      theme.textTheme.bodyMedium!.metropolis.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyLargeDeeporange300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallGray50011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallPoppinsOnPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodyMediumMetropolisGray900 =>
      theme.textTheme.bodyMedium!.metropolis.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyLargeBluegray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppinsDeeporangeA400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: getFontSize(
          11,
        ),
      );
  // Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelMediumPoppinsTeal400 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsMedium =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBluegray100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelMediumPoppinsOnPrimary =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Poppins text style
  static get poppinsOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSmallGreen600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePoppinsOnPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOnPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get metropolis {
    return copyWith(
      fontFamily: 'Metropolis',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
