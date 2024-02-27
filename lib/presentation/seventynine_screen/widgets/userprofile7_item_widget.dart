import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/userprofile7_item_model.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  Userprofile7ItemWidget(
    this.userprofile7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile7ItemModel userprofile7ItemModelObj;

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
        children: [
          CustomImageView(
            imagePath: userprofile7ItemModelObj?.userImage,
            height: 31.adaptSize,
            width: 31.adaptSize,
          ),
          Container(
            height: 23.v,
            width: 270.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    userprofile7ItemModelObj.username!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 209.h,
                    margin: EdgeInsets.only(left: 61.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            userprofile7ItemModelObj.accountNumber!,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                        Container(
                          height: 23.adaptSize,
                          width: 23.adaptSize,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
