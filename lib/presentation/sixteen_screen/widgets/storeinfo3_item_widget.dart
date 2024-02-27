import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/storeinfo3_item_model.dart';

// ignore: must_be_immutable
class Storeinfo3ItemWidget extends StatelessWidget {
  Storeinfo3ItemWidget(
    this.storeinfo3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Storeinfo3ItemModel storeinfo3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: storeinfo3ItemModelObj?.storeImage,
            height: 49.adaptSize,
            width: 49.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeinfo3ItemModelObj.storeName!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  storeinfo3ItemModelObj.distance!,
                  style: CustomTextStyles.bodySmallRed60011,
                ),
                SizedBox(
                  width: 94.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 2.v,
                        ),
                      ),
                      Text(
                        storeinfo3ItemModelObj.rating!,
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          storeinfo3ItemModelObj.numRatings!,
                          style: CustomTextStyles.bodySmall11,
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
