import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/walletcomponent_item_model.dart';

// ignore: must_be_immutable
class WalletcomponentItemWidget extends StatelessWidget {
  WalletcomponentItemWidget(
    this.walletcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WalletcomponentItemModel walletcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: walletcomponentItemModelObj?.walletImage,
            height: 27.adaptSize,
            width: 27.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Container(
            height: 23.v,
            width: 270.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    walletcomponentItemModelObj.walletText!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 190.h,
                    margin: EdgeInsets.only(left: 80.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            walletcomponentItemModelObj.amountText!,
                            style: CustomTextStyles.titleMediumRed600_1,
                          ),
                        ),
                        Container(
                          height: 23.adaptSize,
                          width: 23.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              11.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray40001,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
