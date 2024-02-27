import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/eightyone_item_model.dart';

// ignore: must_be_immutable
class EightyoneItemWidget extends StatelessWidget {
  EightyoneItemWidget(
    this.eightyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyoneItemModel eightyoneItemModelObj;

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
