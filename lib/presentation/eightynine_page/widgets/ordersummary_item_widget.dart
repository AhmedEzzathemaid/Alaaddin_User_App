import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/ordersummary_item_model.dart';

// ignore: must_be_immutable
class OrdersummaryItemWidget extends StatelessWidget {
  OrdersummaryItemWidget(
    this.ordersummaryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdersummaryItemModel ordersummaryItemModelObj;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ordersummaryItemModelObj.orderNumber!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      ordersummaryItemModelObj.productCount!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      ordersummaryItemModelObj.totalAmount!,
                      style: CustomTextStyles.titleSmallRed600,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 43.v),
                  child: Text(
                    ordersummaryItemModelObj.deliveryTime!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: CustomIconButton(
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillDeepOrange,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup301,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ordersummaryItemModelObj.deliveryPoint!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        ordersummaryItemModelObj.deliveryTimeFrame!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          _buildOrderStatus(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 90.h,
      text: "lbl_pending".tr,
      margin: EdgeInsets.only(left: 4.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFirrtimequarterpast,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.bodyMediumPrimary13,
    );
  }
}
