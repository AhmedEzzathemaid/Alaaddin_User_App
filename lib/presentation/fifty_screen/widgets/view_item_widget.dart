import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/view_item_model.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

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
