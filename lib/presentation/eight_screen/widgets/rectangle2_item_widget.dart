import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle2_item_model.dart';

// ignore: must_be_immutable
class Rectangle2ItemWidget extends StatelessWidget {
  Rectangle2ItemWidget(
    this.rectangle2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle2ItemModel rectangle2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: rectangle2ItemModelObj?.rectangle,
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
