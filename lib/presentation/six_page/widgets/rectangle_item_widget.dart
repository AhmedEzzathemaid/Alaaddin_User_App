import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle_item_model.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  RectangleItemWidget(
    this.rectangleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RectangleItemModel rectangleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: rectangleItemModelObj?.rectangle,
          height: 116.v,
          width: 200.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
