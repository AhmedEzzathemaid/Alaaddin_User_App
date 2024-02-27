import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/ordersummary1_item_model.dart';

// ignore: must_be_immutable
class Ordersummary1ItemWidget extends StatelessWidget {
  Ordersummary1ItemWidget(
    this.ordersummary1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Ordersummary1ItemModel ordersummary1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ordersummary1ItemModelObj.widget!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      ordersummary1ItemModelObj.productName!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      ordersummary1ItemModelObj.totalPrice!,
                      style: CustomTextStyles.titleSmallRed600,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Column(
                    children: [
                      Text(
                        ordersummary1ItemModelObj.orderDateTime!,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 21.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserRed600,
                        height: 19.v,
                        width: 20.h,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ordersummary1ItemModelObj?.productImage,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          ordersummary1ItemModelObj.orderSchedule!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Text(
                        ordersummary1ItemModelObj.orderDate!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 93.h,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: AppDecoration.fillRed600.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        ordersummary1ItemModelObj.hours!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        ordersummary1ItemModelObj.hoursLabel!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                      Text(
                        ordersummary1ItemModelObj.minutes!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        ordersummary1ItemModelObj.minutesLabel!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                      Text(
                        ordersummary1ItemModelObj.seconds!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        ordersummary1ItemModelObj.secondsLabel!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
