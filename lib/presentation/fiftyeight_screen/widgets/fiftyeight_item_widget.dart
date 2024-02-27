import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/fiftyeight_item_model.dart';

// ignore: must_be_immutable
class FiftyeightItemWidget extends StatelessWidget {
  FiftyeightItemWidget(
    this.fiftyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyeightItemModel fiftyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
            ),
            child: Text(
              fiftyeightItemModelObj.overallRating!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: fiftyeightItemModelObj?.overallrating,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ],
      ),
    );
  }
}
