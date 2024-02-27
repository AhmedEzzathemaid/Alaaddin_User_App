import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/storeinfo_item_model.dart';

// ignore: must_be_immutable
class StoreinfoItemWidget extends StatelessWidget {
  StoreinfoItemWidget(
    this.storeinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StoreinfoItemModel storeinfoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 192.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.outlineGray20004.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: storeinfoItemModelObj?.storeImage,
                height: 49.adaptSize,
                width: 49.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storeinfoItemModelObj.storeName!,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      storeinfoItemModelObj.distance!,
                      style: CustomTextStyles.bodySmallRed60011,
                    ),
                    SizedBox(
                      width: 94.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 2.v,
                            ),
                          ),
                          Text(
                            storeinfoItemModelObj.rating!,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              storeinfoItemModelObj.numRatings!,
                              style: CustomTextStyles.bodySmall11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
