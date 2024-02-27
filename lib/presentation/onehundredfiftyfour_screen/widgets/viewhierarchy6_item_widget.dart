import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import '../models/viewhierarchy6_item_model.dart';

// ignore: must_be_immutable
class Viewhierarchy6ItemWidget extends StatelessWidget {
  Viewhierarchy6ItemWidget(
    this.viewhierarchy6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy6ItemModel viewhierarchy6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewhierarchy6ItemModelObj.dateText!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    viewhierarchy6ItemModelObj.cancelText!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: 252.h,
                    child: Text(
                      viewhierarchy6ItemModelObj.loremText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.36,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  CustomElevatedButton(
                    height: 23.v,
                    width: 133.h,
                    text: "msg_it_is_being_worked".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 6.h),
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgFirrtimequarterpastGreenA40001,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillGreenATL4,
                    buttonTextStyle: CustomTextStyles.bodyMediumGreenA4000113,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 41.h,
              bottom: 95.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.outlineWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              viewhierarchy6ItemModelObj.numberText!,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
