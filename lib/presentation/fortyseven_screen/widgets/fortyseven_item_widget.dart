import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/fortyseven_item_model.dart';

// ignore: must_be_immutable
class FortysevenItemWidget extends StatelessWidget {
  FortysevenItemWidget(
    this.fortysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortysevenItemModel fortysevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: CustomImageView(
        imagePath: fortysevenItemModelObj?.rectangle,
        height: 55.adaptSize,
        width: 55.adaptSize,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
