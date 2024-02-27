import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/zipcode_item_model.dart';

// ignore: must_be_immutable
class ZipcodeItemWidget extends StatelessWidget {
  ZipcodeItemWidget(
    this.zipcodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ZipcodeItemModel zipcodeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray200041.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Text(
        zipcodeItemModelObj.zipcode!,
        style: CustomTextStyles.titleSmallGray60015_1,
      ),
    );
  }
}
