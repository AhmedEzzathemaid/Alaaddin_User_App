import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import '../models/productdetails3_item_model.dart';

// ignore: must_be_immutable
class Productdetails3ItemWidget extends StatelessWidget {
  Productdetails3ItemWidget(
    this.productdetails3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productdetails3ItemModel productdetails3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: productdetails3ItemModelObj?.productImage,
                height: 85.adaptSize,
                width: 85.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productdetails3ItemModelObj.productName!,
                      style: CustomTextStyles.titleMedium17,
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      children: [
                        Text(
                          productdetails3ItemModelObj.productPrice!,
                          style: CustomTextStyles.labelLargeRed600_1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            productdetails3ItemModelObj.productDiscountedPrice!,
                            style: CustomTextStyles.labelLargeGray600.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      productdetails3ItemModelObj.productColor!,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            productdetails3ItemModelObj.productSize!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            productdetails3ItemModelObj.productQuantity!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              SizedBox(
                height: 28.v,
                width: 35.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomIconButton(
                      height: 28.v,
                      width: 35.h,
                      padding: EdgeInsets.all(9.h),
                      decoration:
                          IconButtonStyleHelper.outlineOnSecondaryContainer,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: productdetails3ItemModelObj?.userIcon,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 28.v,
                        width: 35.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: CustomImageView(
                          imagePath: productdetails3ItemModelObj?.settingsIcon,
                          height: 10.v,
                          width: 13.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineOnSecondaryContainer,
                  child: CustomImageView(
                    imagePath: productdetails3ItemModelObj?.moonIcon,
                  ),
                ),
              ),
              _buildRating(context),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineOnSecondaryContainer,
                  child: CustomImageView(
                    imagePath: productdetails3ItemModelObj?.settingsIcon1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRating(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      width: 35.h,
      text: "lbl_4_5".tr,
      margin: EdgeInsets.only(left: 7.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 1.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalGray600,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.labelMediumGray600Medium,
    );
  }
}
