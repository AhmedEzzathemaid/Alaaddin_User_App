import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/arrowturnbackwardround_item_model.dart';

// ignore: must_be_immutable
class ArrowturnbackwardroundItemWidget extends StatelessWidget {
  ArrowturnbackwardroundItemWidget(
    this.arrowturnbackwardroundItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ArrowturnbackwardroundItemModel arrowturnbackwardroundItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        arrowturnbackwardroundItemModelObj.arrowturnbackwardround!,
        style: TextStyle(
          color: appTheme.gray500,
          fontSize: 15.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgArrowturnbackwardround,
        height: 20.adaptSize,
        width: 20.adaptSize,
        margin: EdgeInsets.only(right: 5.h),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgCloseRed600,
        height: 10.adaptSize,
        width: 10.adaptSize,
        margin: EdgeInsets.only(left: 7.h),
      ),
      onDeleted: () {},
      selected: (arrowturnbackwardroundItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: appTheme.whiteA700,
      shape: (arrowturnbackwardroundItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA700.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray20003,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
