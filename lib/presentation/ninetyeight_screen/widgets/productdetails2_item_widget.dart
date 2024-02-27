import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productdetails2_item_model.dart';

// ignore: must_be_immutable
class Productdetails2ItemWidget extends StatelessWidget {
  Productdetails2ItemWidget(
    this.productdetails2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productdetails2ItemModel productdetails2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: productdetails2ItemModelObj?.productImage,
            height: 85.adaptSize,
            width: 85.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productdetails2ItemModelObj.productName!,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      productdetails2ItemModelObj.price1!,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        productdetails2ItemModelObj.price2!,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  productdetails2ItemModelObj.color!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        productdetails2ItemModelObj.size!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        productdetails2ItemModelObj.quantity!,
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
    );
  }
}
