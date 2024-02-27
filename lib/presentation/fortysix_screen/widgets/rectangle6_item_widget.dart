import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle6_item_model.dart';

// ignore: must_be_immutable
class Rectangle6ItemWidget extends StatelessWidget {
  Rectangle6ItemWidget(
    this.rectangle6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle6ItemModel rectangle6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: rectangle6ItemModelObj?.rectangle,
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
