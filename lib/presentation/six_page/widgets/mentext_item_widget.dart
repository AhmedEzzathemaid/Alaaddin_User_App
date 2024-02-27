import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/mentext_item_model.dart';

// ignore: must_be_immutable
class MentextItemWidget extends StatelessWidget {
  MentextItemWidget(
    this.mentextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MentextItemModel mentextItemModelObj;

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
                            imagePath: mentextItemModelObj?.stethoscopeImage,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: mentextItemModelObj?.stethoscopeImage1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: mentextItemModelObj?.gridImage,
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
            mentextItemModelObj.menText!,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
          ),
        ],
      ),
    );
  }
}
