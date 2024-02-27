import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productcard9_item_model.dart';

// ignore: must_be_immutable
class Productcard9ItemWidget extends StatelessWidget {
  Productcard9ItemWidget(
    this.productcard9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard9ItemModel productcard9ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: productcard9ItemModelObj?.image,
            height: 85.adaptSize,
            width: 85.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productcard9ItemModelObj.title!,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      productcard9ItemModelObj.price1!,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        productcard9ItemModelObj.price2!,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  productcard9ItemModelObj.color!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        productcard9ItemModelObj.size!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        productcard9ItemModelObj.quantity!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgUserRed600,
            height: 19.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 67.v,
              right: 4.h,
            ),
          ),
        ],
      ),
    );
  }
}
