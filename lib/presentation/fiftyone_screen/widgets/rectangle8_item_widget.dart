import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/rectangle8_item_model.dart';

// ignore: must_be_immutable
class Rectangle8ItemWidget extends StatelessWidget {
  Rectangle8ItemWidget(
    this.rectangle8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Rectangle8ItemModel rectangle8ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: rectangle8ItemModelObj?.rectangle,
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
