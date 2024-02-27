import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 192.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineGray20004.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: userprofileItemModelObj?.storeImage,
                height: 49.adaptSize,
                width: 49.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofileItemModelObj.storeName!,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      userprofileItemModelObj.itemCount!,
                      style: CustomTextStyles.bodyMedium13,
                    ),
                    Text(
                      userprofileItemModelObj.distance!,
                      style: CustomTextStyles.bodySmallRed60011,
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
