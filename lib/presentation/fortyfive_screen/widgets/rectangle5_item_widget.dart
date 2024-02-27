import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle5_item_model.dart';

// ignore: must_be_immutable
class Rectangle5ItemWidget extends StatelessWidget {
  Rectangle5ItemWidget(
    this.rectangle5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle5ItemModel rectangle5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: rectangle5ItemModelObj?.rectangle,
          height: 55.adaptSize,
          width: 55.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
