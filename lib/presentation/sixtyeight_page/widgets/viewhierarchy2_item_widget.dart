import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/viewhierarchy2_item_model.dart';

// ignore: must_be_immutable
class Viewhierarchy2ItemWidget extends StatelessWidget {
  Viewhierarchy2ItemWidget(
    this.viewhierarchy2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy2ItemModel viewhierarchy2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGreenA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: viewhierarchy2ItemModelObj?.cashImage,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 5.v,
              bottom: 6.v,
            ),
            child: Text(
              viewhierarchy2ItemModelObj.cashText!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.v),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineGray40001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 15.adaptSize,
              width: 15.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
