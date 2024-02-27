import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productlist5_item_model.dart';

// ignore: must_be_immutable
class Productlist5ItemWidget extends StatelessWidget {
  Productlist5ItemWidget(
    this.productlist5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist5ItemModel productlist5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: productlist5ItemModelObj?.productImage,
            height: 49.adaptSize,
            width: 49.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productlist5ItemModelObj.productName!,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    Text(
                      productlist5ItemModelObj.productPrice1!,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        productlist5ItemModelObj.productPrice2!,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
