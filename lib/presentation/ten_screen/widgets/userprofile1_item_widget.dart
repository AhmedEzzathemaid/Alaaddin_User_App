import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/userprofile1_item_model.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile1ItemModelObj.defaultAddress!,
                  style: CustomTextStyles.titleMediumPrimary,
                ),
                SizedBox(height: 3.v),
                Text(
                  userprofile1ItemModelObj.addressText!,
                  style: CustomTextStyles.titleSmallGray60015,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 46.h,
              top: 2.v,
              bottom: 19.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineGray40001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 15.adaptSize,
              width: 15.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.greenA40001,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
