import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import '../models/productcard11_item_model.dart';

// ignore: must_be_immutable
class Productcard11ItemWidget extends StatelessWidget {
  Productcard11ItemWidget(
    this.productcard11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard11ItemModel productcard11ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productcard11ItemModelObj.widget!,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    productcard11ItemModelObj.time!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: productcard11ItemModelObj?.elNorStore,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 6.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    productcard11ItemModelObj.elNorStore1!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: productcard11ItemModelObj?.productImage,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 4.v,
                    bottom: 7.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          productcard11ItemModelObj.productName!,
                          style: CustomTextStyles.titleSmall15_1,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Container(
                        width: 103.h,
                        margin: EdgeInsets.only(right: 4.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productcard11ItemModelObj.productPrice!,
                              style: CustomTextStyles.labelLargeRed600,
                            ),
                            Text(
                              productcard11ItemModelObj.productDiscountedPrice!,
                              style:
                                  CustomTextStyles.labelLargeGray60012.copyWith(
                                decoration: TextDecoration.lineThrough,
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
          ),
          SizedBox(height: 7.v),
          _buildWaitingForStoreApproval(context),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWaitingForStoreApproval(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 192.h,
      text: "msg_waiting_for_store".tr,
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
