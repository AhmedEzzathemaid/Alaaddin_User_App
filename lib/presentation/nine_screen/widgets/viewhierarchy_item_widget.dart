import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/viewhierarchy_item_model.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.v),
          child: Column(
            children: [
              SizedBox(
                height: 190.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: viewhierarchyItemModelObj?.image,
                      height: 190.v,
                      width: 160.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10.h, 5.v, 5.h, 155.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 44.h,
                              margin: EdgeInsets.symmetric(vertical: 5.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.outlineWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                viewhierarchyItemModelObj.text!,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              child: CustomImageView(
                                imagePath: viewhierarchyItemModelObj?.icon,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                viewhierarchyItemModelObj.bomberJackets!,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
