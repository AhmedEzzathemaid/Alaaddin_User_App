import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/s16_item_model.dart';

// ignore: must_be_immutable
class S16ItemWidget extends StatelessWidget {
  S16ItemWidget(
    this.s16ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  S16ItemModel s16ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 12.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        s16ItemModelObj.s!,
        style: TextStyle(
          color: theme.colorScheme.onSecondaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (s16ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray10001,
      selectedColor: appTheme.gray10001,
      shape: (s16ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray10001.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray20004,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
