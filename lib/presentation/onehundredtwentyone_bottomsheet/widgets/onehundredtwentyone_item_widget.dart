import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/onehundredtwentyone_item_model.dart';

// ignore: must_be_immutable
class OnehundredtwentyoneItemWidget extends StatelessWidget {
  OnehundredtwentyoneItemWidget(
    this.onehundredtwentyoneItemModelObj, {
    Key? key,
    this.onTapBtnClose,
  }) : super(
          key: key,
        );

  OnehundredtwentyoneItemModel onehundredtwentyoneItemModelObj;

  VoidCallback? onTapBtnClose;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 59.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 59.adaptSize,
          width: 59.adaptSize,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: onehundredtwentyoneItemModelObj?.image,
                height: 55.adaptSize,
                width: 55.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.bottomLeft,
              ),
              CustomIconButton(
                height: 16.adaptSize,
                width: 16.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillRed,
                alignment: Alignment.topRight,
                onTap: () {
                  onTapBtnClose!.call();
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseWhiteA700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
