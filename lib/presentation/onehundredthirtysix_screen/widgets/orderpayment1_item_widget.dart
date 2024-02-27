import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/orderpayment1_item_model.dart';

// ignore: must_be_immutable
class Orderpayment1ItemWidget extends StatelessWidget {
  Orderpayment1ItemWidget(
    this.orderpayment1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderpayment1ItemModel orderpayment1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderpayment1ItemModelObj.orderPaymentText!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  orderpayment1ItemModelObj.orderNumberText!,
                  style: CustomTextStyles.titleSmallGray60015,
                ),
                SizedBox(height: 1.v),
                Text(
                  orderpayment1ItemModelObj.orderDateTimeText!,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.v),
            child: Text(
              orderpayment1ItemModelObj.orderAmountText!,
              style: CustomTextStyles.titleMediumRed600_1,
            ),
          ),
        ],
      ),
    );
  }
}
