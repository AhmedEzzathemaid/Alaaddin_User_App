import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/orderdetails_item_model.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderdetailsItemModelObj.orderNumber!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      orderdetailsItemModelObj.productCount!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      orderdetailsItemModelObj.totalAmount!,
                      style: CustomTextStyles.titleSmallRed600,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 43.v),
                  child: Text(
                    orderdetailsItemModelObj.orderDateTime!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: orderdetailsItemModelObj?.productImage,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          orderdetailsItemModelObj.orderScheduleTitle!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Text(
                        orderdetailsItemModelObj.orderScheduleDate!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 93.h,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    right: 1.h,
                    bottom: 5.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: AppDecoration.fillRed600.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        orderdetailsItemModelObj.timerHours!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        orderdetailsItemModelObj.timerDays!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                      Text(
                        orderdetailsItemModelObj.timerMinutes!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        orderdetailsItemModelObj.h!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                      Text(
                        orderdetailsItemModelObj.fifteen!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        orderdetailsItemModelObj.min!,
                        style: CustomTextStyles.labelMedium10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
