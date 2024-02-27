import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGreenA40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA40001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGreenA4000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumGreenA40001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA40001,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnSecondaryContainer13 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnSecondaryContainer13_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnSecondaryContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnSecondaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumRed600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 13.fSize,
      );
  static get bodyMediumRed60015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 15.fSize,
      );
  static get bodyMediumRed600_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red600,
      );
  static get bodyMediumSFProTextBlack900 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallGreenA40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA40001,
      );
  static get bodySmallOnSecondaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodySmallPoppinsGray40003 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray40003,
        fontSize: 11.fSize,
      );
  static get bodySmallRed600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red600,
      );
  static get bodySmallRed60011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red600,
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineMediumInterBlack900 =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumff7a7f8a => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF7A7F8A),
      );
  static get headlineSmallDMSansWhiteA700 =>
      theme.textTheme.headlineSmall!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallDMSansffffffff =>
      theme.textTheme.headlineSmall!.dMSans.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get headlineSmallOnSecondaryContainerBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get labelLargeBluegray70012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 12.fSize,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeGray60012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get labelLargeGray60012_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get labelLargeInterDeeporange400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.deepOrange400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterWhiteA700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get labelLargeRed600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red600,
        fontSize: 12.fSize,
      );
  static get labelLargeRed600_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red600,
      );
  static get labelLargeSFProTextBlack900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeff475669 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF475669),
        fontSize: 12.fSize,
      );
  static get labelLargeffbfa274 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFBFA274),
        fontSize: 12.fSize,
      );
  static get labelMedium10 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
      );
  static get labelMediumDeeporangeA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepOrangeA700.withOpacity(0.25),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumDeeporangeA700Medium =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray600Medium => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLarge21_1 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeDMSansWhiteA700 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGreenA40001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.greenA40001,
        fontSize: 21.fSize,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeRed600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red600,
        fontSize: 21.fSize,
      );
  static get titleLargeSFProDisplay =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSFProDisplayBlack900 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeSFProDisplayBlack900Regular =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansffffffff =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get titleMediumGray60017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
      );
  static get titleMediumGray60017_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
      );
  static get titleMediumGray60018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get titleMediumGray600Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray600Bold17 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGray600_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGreenA40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA40001,
      );
  static get titleMediumGreenA4000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA40001,
        fontSize: 18.fSize,
      );
  static get titleMediumGreenA4000119 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA40001,
        fontSize: 19.fSize,
      );
  static get titleMediumGreenA40001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA40001,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRed600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed60017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 17.fSize,
      );
  static get titleMediumRed60019 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 19.fSize,
      );
  static get titleMediumRed600SemiBold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed600SemiBold17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed600SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
      );
  static get titleMediumRed600_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
      );
  static get titleMediumWhiteA70017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleMediumWhiteA700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700Bold19 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleMedium_2 => theme.textTheme.titleMedium!;
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmall15_1 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray60015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get titleSmallGray60015_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get titleSmallGray600SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray600_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGreenA40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA40001,
      );
  static get titleSmallGreenA40001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA40001,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallPrimary15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary15_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallRed600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red600,
      );
  static get titleSmallRed600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmall_2 => theme.textTheme.titleSmall!;
  static get titleSmallff1a232b => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1A232B),
      );
  static get titleSmallff1a232b_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1A232B),
      );
  static get titleSmallff7a7f8a => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF7A7F8A),
      );
  static get titleSmallffea3b3b => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFEA3B3B),
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
