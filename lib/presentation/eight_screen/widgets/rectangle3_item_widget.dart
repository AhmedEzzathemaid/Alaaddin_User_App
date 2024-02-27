import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle3_item_model.dart';

// ignore: must_be_immutable
class Rectangle3ItemWidget extends StatelessWidget {
  Rectangle3ItemWidget(
    this.rectangle3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle3ItemModel rectangle3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: rectangle3ItemModelObj?.rectangle,
          height: 190.v,
          width: 160.h,
          radius: BorderRadius.circular(
            15.h,
          ),
          margin: EdgeInsets.only(bottom: 51.v),
        ),
      ),
    );
  }
}
