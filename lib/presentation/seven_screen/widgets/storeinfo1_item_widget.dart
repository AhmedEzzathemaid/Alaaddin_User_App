import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/storeinfo1_item_model.dart';

// ignore: must_be_immutable
class Storeinfo1ItemWidget extends StatelessWidget {
  Storeinfo1ItemWidget(
    this.storeinfo1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Storeinfo1ItemModel storeinfo1ItemModelObj;

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
                imagePath: storeinfo1ItemModelObj?.storeImage,
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
                      storeinfo1ItemModelObj.storeName!,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      storeinfo1ItemModelObj.itemCount!,
                      style: CustomTextStyles.bodyMedium13,
                    ),
                    Text(
                      storeinfo1ItemModelObj.distance!,
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
