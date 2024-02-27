import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/view2_item_model.dart';

// ignore: must_be_immutable
class View2ItemWidget extends StatelessWidget {
  View2ItemWidget(
    this.view2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  View2ItemModel view2ItemModelObj;

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
