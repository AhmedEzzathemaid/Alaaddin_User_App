import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle4_item_model.dart';

// ignore: must_be_immutable
class Rectangle4ItemWidget extends StatelessWidget {
  Rectangle4ItemWidget(
    this.rectangle4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle4ItemModel rectangle4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: rectangle4ItemModelObj?.rectangle,
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
