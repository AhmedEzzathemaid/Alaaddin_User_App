import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productcard5_item_model.dart';

// ignore: must_be_immutable
class Productcard5ItemWidget extends StatelessWidget {
  Productcard5ItemWidget(
    this.productcard5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard5ItemModel productcard5ItemModelObj;

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
            imagePath: productcard5ItemModelObj?.image,
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
                  productcard5ItemModelObj.title!,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      productcard5ItemModelObj.price!,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        productcard5ItemModelObj.discountedPrice!,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  productcard5ItemModelObj.color!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        productcard5ItemModelObj.size!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        productcard5ItemModelObj.quantity!,
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
