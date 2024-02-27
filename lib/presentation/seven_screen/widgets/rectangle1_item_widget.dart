import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle1_item_model.dart';

// ignore: must_be_immutable
class Rectangle1ItemWidget extends StatelessWidget {
  Rectangle1ItemWidget(
    this.rectangle1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle1ItemModel rectangle1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: rectangle1ItemModelObj?.rectangle,
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
