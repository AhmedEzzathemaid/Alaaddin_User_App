import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/ordersummary2_item_model.dart';

// ignore: must_be_immutable
class Ordersummary2ItemWidget extends StatelessWidget {
  Ordersummary2ItemWidget(
    this.ordersummary2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Ordersummary2ItemModel ordersummary2ItemModelObj;

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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ordersummary2ItemModelObj.orderNumber!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      ordersummary2ItemModelObj.productCount!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      ordersummary2ItemModelObj.totalAmount!,
                      style: CustomTextStyles.titleSmallRed600,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Column(
                    children: [
                      Text(
                        ordersummary2ItemModelObj.deliveryTime!,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 18.v),
                      _buildOrderStatus(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 31.adaptSize,
                  width: 31.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillDeepOrange,
                  child: CustomImageView(
                    imagePath: ordersummary2ItemModelObj?.iconButton,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    ordersummary2ItemModelObj.deliveryPoint!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 90.h,
      text: "lbl_finished".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFirrboxalt,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL41,
      buttonTextStyle: CustomTextStyles.bodyMediumGreenA4000113,
      alignment: Alignment.centerRight,
    );
  }
}
