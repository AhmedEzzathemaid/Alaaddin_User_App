import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/bagstext_item_model.dart';

// ignore: must_be_immutable
class BagstextItemWidget extends StatelessWidget {
  BagstextItemWidget(
    this.bagstextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BagstextItemModel bagstextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.cyan500,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              decoration: AppDecoration.fillCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: bagstextItemModelObj?.careImage,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: bagstextItemModelObj?.settingsImage,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            bagstextItemModelObj.bagsText!,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
          ),
        ],
      ),
    );
  }
}
