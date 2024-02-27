import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/eightyseven_item_model.dart';

// ignore: must_be_immutable
class EightysevenItemWidget extends StatelessWidget {
  EightysevenItemWidget(
    this.eightysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightysevenItemModel eightysevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle2196,
        height: 321.v,
        width: 375.h,
      ),
    );
  }
}
