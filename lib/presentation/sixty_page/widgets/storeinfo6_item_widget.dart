import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/storeinfo6_item_model.dart';

// ignore: must_be_immutable
class Storeinfo6ItemWidget extends StatelessWidget {
  Storeinfo6ItemWidget(
    this.storeinfo6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Storeinfo6ItemModel storeinfo6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: storeinfo6ItemModelObj?.storeImage,
            height: 49.adaptSize,
            width: 49.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeinfo6ItemModelObj.storeName!,
                  style: theme.textTheme.titleMedium,
                ),
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
                        storeinfo6ItemModelObj.ratingText!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          storeinfo6ItemModelObj.ratingCount!,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  storeinfo6ItemModelObj.distance!,
                  style: CustomTextStyles.bodySmallRed60011,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 8.h,
              bottom: 13.v,
            ),
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
