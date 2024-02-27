import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/s20_item_model.dart';

// ignore: must_be_immutable
class S20ItemWidget extends StatelessWidget {
  S20ItemWidget(
    this.s20ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  S20ItemModel s20ItemModelObj;

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
        s20ItemModelObj.s!,
        style: TextStyle(
          color: theme.colorScheme.onSecondaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (s20ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray10001,
      selectedColor: appTheme.gray10001,
      shape: (s20ItemModelObj.isSelected ?? false)
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
