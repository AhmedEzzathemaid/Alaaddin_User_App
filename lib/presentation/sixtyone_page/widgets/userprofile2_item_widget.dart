import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/userprofile2_item_model.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: CustomIconButton(
              height: 43.adaptSize,
              width: 43.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillIndigoA,
              child: CustomImageView(
                imagePath: userprofile2ItemModelObj?.settings,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile2ItemModelObj.elNoor!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  width: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 3.v,
                        ),
                      ),
                      Text(
                        userprofile2ItemModelObj.fortyFive!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          userprofile2ItemModelObj.ratings!,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 16.v,
            ),
            child: Text(
              userprofile2ItemModelObj.distance!,
              style: CustomTextStyles.bodySmallRed60011,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(9.h, 6.v, 6.h, 9.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillGrayTL151,
              child: CustomImageView(
                imagePath: ImageConstant.imgSupportHeartRed600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
