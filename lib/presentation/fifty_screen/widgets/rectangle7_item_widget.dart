import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle7_item_model.dart';

// ignore: must_be_immutable
class Rectangle7ItemWidget extends StatelessWidget {
  Rectangle7ItemWidget(
    this.rectangle7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle7ItemModel rectangle7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: rectangle7ItemModelObj?.rectangle,
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
