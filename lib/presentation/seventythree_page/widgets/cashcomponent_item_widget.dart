import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/cashcomponent_item_model.dart';

// ignore: must_be_immutable
class CashcomponentItemWidget extends StatelessWidget {
  CashcomponentItemWidget(
    this.cashcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CashcomponentItemModel cashcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: cashcomponentItemModelObj?.cashImage,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 5.v,
              bottom: 6.v,
            ),
            child: Text(
              cashcomponentItemModelObj.cashText!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Container(
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(
                11.h,
              ),
              border: Border.all(
                color: appTheme.gray40001,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
