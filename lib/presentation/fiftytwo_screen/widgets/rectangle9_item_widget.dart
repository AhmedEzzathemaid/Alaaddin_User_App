import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle9_item_model.dart';

// ignore: must_be_immutable
class Rectangle9ItemWidget extends StatelessWidget {
  Rectangle9ItemWidget(
    this.rectangle9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle9ItemModel rectangle9ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: rectangle9ItemModelObj?.rectangle,
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
