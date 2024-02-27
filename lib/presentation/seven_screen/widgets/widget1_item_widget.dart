import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/widget1_item_model.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  Widget1ItemWidget(
    this.widget1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget1ItemModel widget1ItemModelObj;

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
                    imagePath: widget1ItemModelObj?.image13,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: widget1ItemModelObj?.image14,
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
            widget1ItemModelObj.text6!,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
          ),
        ],
      ),
    );
  }
}
