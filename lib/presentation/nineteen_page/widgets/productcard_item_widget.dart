import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/productcard_item_model.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: productcardItemModelObj?.image,
            height: 88.v,
            width: 74.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 19.v,
              bottom: 22.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productcardItemModelObj.title!,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 185.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productcardItemModelObj.price1!,
                        style: CustomTextStyles.titleMediumRed600SemiBold_1,
                      ),
                      Text(
                        productcardItemModelObj.price2!,
                        style: CustomTextStyles.titleMediumGray600_2.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Container(
                        width: 44.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          productcardItemModelObj.discount!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              bottom: 61.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillGrayTL15,
              child: CustomImageView(
                imagePath: ImageConstant.imgSupportHeart,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
