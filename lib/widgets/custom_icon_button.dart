import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray100,
                  borderRadius: BorderRadius.circular(22.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen70033,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillGrayTL15 => BoxDecoration(
        color: appTheme.gray20006,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillGrayTL19 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(19.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange400.withOpacity(0.27),
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan70030,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillGrayTL151 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA400,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal40001,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple300,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillTealTL18 => BoxDecoration(
        color: appTheme.teal40001,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillIndigoATL18 => BoxDecoration(
        color: appTheme.indigoA400,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillPrimaryTL16 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPurpleTL18 => BoxDecoration(
        color: appTheme.purple300,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillIndigoATL29 => BoxDecoration(
        color: appTheme.indigoA400,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA40001,
        borderRadius: BorderRadius.circular(19.h),
      );
  static BoxDecoration get fillPrimaryTL5 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.19),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(17.h),
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: appTheme.gray600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGrayTL22 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineAmber => BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: appTheme.amber700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL4 => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue800,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillPrimaryTL22 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillGrayTL22 => BoxDecoration(
        color: appTheme.gray100.withOpacity(0.07),
        borderRadius: BorderRadius.circular(22.h),
      );
}
