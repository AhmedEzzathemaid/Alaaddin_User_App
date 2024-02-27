import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/banking_item_model.dart';

// ignore: must_be_immutable
class BankingItemWidget extends StatelessWidget {
  BankingItemWidget(
    this.bankingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BankingItemModel bankingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 29.h,
      child: CustomImageView(
        imagePath: bankingItemModelObj?.banking,
        height: 29.adaptSize,
        width: 29.adaptSize,
        margin: EdgeInsets.only(
          left: 1.h,
          bottom: 2.v,
        ),
      ),
    );
  }
}
