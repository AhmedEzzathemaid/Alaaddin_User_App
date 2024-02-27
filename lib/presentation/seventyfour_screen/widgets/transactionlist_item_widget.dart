import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/transactionlist_item_model.dart';

// ignore: must_be_immutable
class TransactionlistItemWidget extends StatelessWidget {
  TransactionlistItemWidget(
    this.transactionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionlistItemModel transactionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return _buildTransactionList(context);
  }

  /// Section Widget
  Widget _buildTransactionList(BuildContext context) {
    return Column(
      children: [
        Container(
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
                imagePath: transactionlistItemModelObj?.cashImage,
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
                  transactionlistItemModelObj.cashText!,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.v),
                padding: EdgeInsets.all(2.h),
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
        ),
        SizedBox(height: 6.v),
        Container(
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
                imagePath: transactionlistItemModelObj?.bankImage,
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
                        transactionlistItemModelObj.walletText!,
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
                                transactionlistItemModelObj.amountText!,
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
        ),
        SizedBox(height: 6.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineGray20004.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: transactionlistItemModelObj?.bankTransferImage,
                height: 29.adaptSize,
                width: 29.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 4.v,
                  bottom: 5.v,
                ),
                child: Text(
                  transactionlistItemModelObj.bankTransferText!,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Container(
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 2.v,
                ),
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
      ],
    );
  }
}
