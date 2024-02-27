import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/orderconfirmation_item_model.dart';

// ignore: must_be_immutable
class OrderconfirmationItemWidget extends StatelessWidget {
  OrderconfirmationItemWidget(
    this.orderconfirmationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderconfirmationItemModel orderconfirmationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderconfirmationItemModelObj.orderNumber!,
                  style: CustomTextStyles.titleSmallGray600,
                ),
                SizedBox(height: 1.v),
                Text(
                  orderconfirmationItemModelObj.orderStatus!,
                  style: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
                ),
                SizedBox(height: 1.v),
                Text(
                  orderconfirmationItemModelObj.orderDateTime!,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: orderconfirmationItemModelObj?.orderImage,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 41.v),
          ),
        ],
      ),
    );
  }
}
