import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/userprofile6_item_model.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  Userprofile6ItemWidget(
    this.userprofile6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile6ItemModel userprofile6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userprofile6ItemModelObj?.cashPayImage,
            height: 16.v,
            width: 37.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Container(
            height: 23.v,
            width: 270.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    userprofile6ItemModelObj.cashPayText!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          userprofile6ItemModelObj.accountText!,
                          style: CustomTextStyles.bodyMedium13,
                        ),
                      ),
                      Container(
                        height: 23.adaptSize,
                        width: 23.adaptSize,
                        margin: EdgeInsets.only(left: 65.h),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}