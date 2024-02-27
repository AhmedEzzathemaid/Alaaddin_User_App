import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.92),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.76),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan500,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange40001,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400.withOpacity(0.05),
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA100,
      );
  static BoxDecoration get fillDeeporange400 => BoxDecoration(
        color: appTheme.deepOrange400,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGrayE => BoxDecoration(
        color: appTheme.gray6001e,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillGreenA40001 => BoxDecoration(
        color: appTheme.greenA40001.withOpacity(0.12),
      );
  static BoxDecoration get fillGreenA400011 => BoxDecoration(
        color: appTheme.greenA40001.withOpacity(0.14),
      );
  static BoxDecoration get fillGreenA400012 => BoxDecoration(
        color: appTheme.greenA40001.withOpacity(0.15),
      );
  static BoxDecoration get fillLightGreenA => BoxDecoration(
        color: appTheme.lightGreenA70042,
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange400,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink300,
      );
  static BoxDecoration get fillPink50070 => BoxDecoration(
        color: appTheme.pink50070,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.13),
      );
  static BoxDecoration get fillPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.24),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: appTheme.red600,
      );
  static BoxDecoration get fillRed6001 => BoxDecoration(
        color: appTheme.red600.withOpacity(0.15),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal5002,
      );
  static BoxDecoration get fillTeal40001 => BoxDecoration(
        color: appTheme.teal40001,
      );
  static BoxDecoration get fillTeal50 => BoxDecoration(
        color: appTheme.teal50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.3),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        border: Border.all(
          color: appTheme.amber700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray10004,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA700.withOpacity(0.11),
        border: Border.all(
          color: appTheme.deepOrangeA700.withOpacity(0.09),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray10003,
        border: Border.all(
          color: appTheme.gray30006,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20004 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray20004,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray200041 => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: appTheme.gray20004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30003 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray30003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30004 => BoxDecoration(
        color: appTheme.blueGray50,
        border: Border.all(
          color: appTheme.gray30004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30005 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray30005,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30006 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray30006,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray40001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        color: appTheme.greenA40001.withOpacity(0.11),
        border: Border.all(
          color: appTheme.greenA40001.withOpacity(0.12),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreenA40001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.greenA40001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreenA400011 => BoxDecoration(
        color: appTheme.greenA40001.withOpacity(0.15),
        border: Border.all(
          color: appTheme.greenA40001.withOpacity(0.16),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreenA700 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.greenA700,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              3,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.19),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.46),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.red600,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.red600,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.only(
        topLeft: Radius.circular(25.h),
        topRight: Radius.circular(25.h),
        bottomLeft: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    