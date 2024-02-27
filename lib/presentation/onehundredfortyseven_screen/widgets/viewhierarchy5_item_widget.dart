import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/viewhierarchy5_item_model.dart';

// ignore: must_be_immutable
class Viewhierarchy5ItemWidget extends StatelessWidget {
  Viewhierarchy5ItemWidget(
    this.viewhierarchy5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy5ItemModel viewhierarchy5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewhierarchy5ItemModelObj.homeText!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    viewhierarchy5ItemModelObj.addressText!,
                    style: CustomTextStyles.titleSmallGray60015,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    viewhierarchy5ItemModelObj.phoneNumberText!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiRrPencil,
            height: 18.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 21.h,
              top: 47.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiRrTrash,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 47.v,
            ),
          ),
        ],
      ),
    );
  }
}
