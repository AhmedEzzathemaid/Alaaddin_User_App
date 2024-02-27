import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/widget2_item_model.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  Widget2ItemWidget(
    this.widget2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget2ItemModel widget2ItemModelObj;

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
            color: appTheme.blueA200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              decoration: AppDecoration.fillBlueA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: widget2ItemModelObj?.image1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: widget2ItemModelObj?.image2,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: widget2ItemModelObj?.image3,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            widget2ItemModelObj.text1!,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
          ),
        ],
      ),
    );
  }
}
