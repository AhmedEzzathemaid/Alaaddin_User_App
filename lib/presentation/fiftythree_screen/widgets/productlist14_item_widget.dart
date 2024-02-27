import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productlist14_item_model.dart';

// ignore: must_be_immutable
class Productlist14ItemWidget extends StatelessWidget {
  Productlist14ItemWidget(
    this.productlist14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist14ItemModel productlist14ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: productlist14ItemModelObj?.productImage1,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 19.v,
            ),
          ),
          CustomImageView(
            imagePath: productlist14ItemModelObj?.productImage2,
            height: 57.adaptSize,
            width: 57.adaptSize,
            radius: BorderRadius.circular(
              7.h,
            ),
            margin: EdgeInsets.only(
              left: 5.h,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productlist14ItemModelObj.productName!,
                  style: CustomTextStyles.titleSmall15_1,
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 103.h,
                  margin: EdgeInsets.only(right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productlist14ItemModelObj.price1!,
                        style: CustomTextStyles.labelLargeRed600,
                      ),
                      Text(
                        productlist14ItemModelObj.price2!,
                        style: CustomTextStyles.labelLargeGray60012.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  productlist14ItemModelObj.categoryImage!,
                  style: CustomTextStyles.labelLargeGray60012_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFiRrTrash,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 18.v,
              right: 6.h,
              bottom: 19.v,
            ),
          ),
        ],
      ),
    );
  }
}
