import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/productcard1_item_model.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 163.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: productcard1ItemModelObj?.image,
            height: 111.adaptSize,
            width: 111.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            productcard1ItemModelObj.title!,
            style: CustomTextStyles.titleMedium17,
          ),
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productcard1ItemModelObj.price1!,
                style: CustomTextStyles.labelLargeRed600_1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  productcard1ItemModelObj.price2!,
                  style: CustomTextStyles.labelLargeGray600.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
