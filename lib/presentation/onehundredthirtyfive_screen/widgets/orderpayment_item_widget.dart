import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/orderpayment_item_model.dart';

// ignore: must_be_immutable
class OrderpaymentItemWidget extends StatelessWidget {
  OrderpaymentItemWidget(
    this.orderpaymentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderpaymentItemModel orderpaymentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderpaymentItemModelObj.orderPaymentText!,
              style: theme.textTheme.titleMedium,
            ),
            Text(
              orderpaymentItemModelObj.orderNumberText!,
              style: CustomTextStyles.titleSmallGray60015,
            ),
            SizedBox(height: 1.v),
            Text(
              orderpaymentItemModelObj.orderDateTimeText!,
              style: CustomTextStyles.bodyMedium13,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 36.v),
          child: Text(
            orderpaymentItemModelObj.orderAmountText!,
            style: CustomTextStyles.titleMediumRed600_1,
          ),
        ),
      ],
    );
  }
}
