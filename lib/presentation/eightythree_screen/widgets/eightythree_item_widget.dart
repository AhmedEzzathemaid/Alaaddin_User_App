import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/eightythree_item_model.dart';

// ignore: must_be_immutable
class EightythreeItemWidget extends StatelessWidget {
  EightythreeItemWidget(
    this.eightythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightythreeItemModel eightythreeItemModelObj;

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
        eightythreeItemModelObj.zipcode!,
        style: CustomTextStyles.titleSmallGray60015_1,
      ),
    );
  }
}
