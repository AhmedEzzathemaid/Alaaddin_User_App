import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/allthebest_item_model.dart';

// ignore: must_be_immutable
class AllthebestItemWidget extends StatelessWidget {
  AllthebestItemWidget(
    this.allthebestItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllthebestItemModel allthebestItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 101.h,
      child: CustomImageView(
        imagePath: allthebestItemModelObj?.allTheBest,
        height: 64.v,
        width: 101.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
