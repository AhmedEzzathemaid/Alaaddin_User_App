import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/storeinfo7_item_model.dart';

// ignore: must_be_immutable
class Storeinfo7ItemWidget extends StatelessWidget {
  Storeinfo7ItemWidget(
    this.storeinfo7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Storeinfo7ItemModel storeinfo7ItemModelObj;

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
            imagePath: storeinfo7ItemModelObj?.storeImage,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeinfo7ItemModelObj.elNorStore!,
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
                        storeinfo7ItemModelObj.ratingText!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          storeinfo7ItemModelObj.ratingCount!,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  storeinfo7ItemModelObj.distance!,
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
                imagePath: storeinfo7ItemModelObj?.supportHeart,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
