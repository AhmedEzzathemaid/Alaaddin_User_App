import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/seventy_item_model.dart';

// ignore: must_be_immutable
class SeventyItemWidget extends StatelessWidget {
  SeventyItemWidget(
    this.seventyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventyItemModel seventyItemModelObj;

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
