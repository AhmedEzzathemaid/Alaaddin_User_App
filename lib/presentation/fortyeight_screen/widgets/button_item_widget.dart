import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/button_item_model.dart';

// ignore: must_be_immutable
class ButtonItemWidget extends StatelessWidget {
  ButtonItemWidget(
    this.buttonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonItemModel buttonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomImageView(
        imagePath: buttonItemModelObj?.image,
        height: 508.v,
        width: 347.h,
        margin: EdgeInsets.only(
          left: 14.h,
          bottom: 189.v,
        ),
      ),
    );
  }
}
