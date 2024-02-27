import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/onehundredthirtysix_bloc.dart';
import 'models/onehundredthirtysix_model.dart';
import 'models/orderpayment1_item_model.dart';
import 'widgets/orderpayment1_item_widget.dart';

class OnehundredthirtysixScreen extends StatelessWidget {
  const OnehundredthirtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtysixBloc>(
      create: (context) => OnehundredthirtysixBloc(OnehundredthirtysixState(
        onehundredthirtysixModelObj: OnehundredthirtysixModel(),
      ))
        ..add(OnehundredthirtysixInitialEvent()),
      child: OnehundredthirtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAddBalance(context),
              SizedBox(height: 6.v),
              _buildPointsTransfer(context),
              SizedBox(height: 8.v),
              Text(
                "lbl_history".tr,
                style: CustomTextStyles.titleLargePrimary,
              ),
              SizedBox(height: 6.v),
              _buildOrderPayment(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_wallet".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddBalance(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWallet3146x46,
            height: 46.adaptSize,
            width: 46.adaptSize,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 9.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 21.v,
              bottom: 19.v,
            ),
            child: Text(
              "lbl_500_yer".tr,
              style: CustomTextStyles.titleMediumGreenA4000119,
            ),
          ),
          Spacer(),
          Column(
            children: [
              CustomOutlinedButton(
                height: 28.v,
                width: 121.h,
                text: "lbl_add_balance".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClosePrimary15x15,
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                  ),
                ),
                buttonTextStyle: CustomTextStyles.labelMediumPrimary,
              ),
              SizedBox(height: 7.v),
              CustomOutlinedButton(
                height: 28.v,
                width: 121.h,
                text: "msg_balance_transfer".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowturnbackwardround,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: CustomTextStyles.labelMediumGray600,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPointsTransfer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineDeepOrangeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGift3,
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_my_points".tr,
                        style: CustomTextStyles.titleSmallff1a232b,
                      ),
                      TextSpan(
                        text: "lbl_600".tr,
                        style: CustomTextStyles.titleSmallffea3b3b,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_100_points_15".tr,
                  style: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            height: 28.v,
            width: 121.h,
            text: "lbl_points_transfer".tr,
            margin: EdgeInsets.symmetric(vertical: 3.v),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 3.h),
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgArrowturnbackwardroundDeepOrangeA700,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineDeepOrangeATL3,
            buttonTextStyle: CustomTextStyles.labelMediumDeeporangeA700Medium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderPayment(BuildContext context) {
    return BlocSelector<OnehundredthirtysixBloc, OnehundredthirtysixState,
        OnehundredthirtysixModel?>(
      selector: (state) => state.onehundredthirtysixModelObj,
      builder: (context, onehundredthirtysixModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 1.5.v),
              child: SizedBox(
                width: 336.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray20003,
                ),
              ),
            );
          },
          itemCount:
              onehundredthirtysixModelObj?.orderpayment1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Orderpayment1ItemModel model =
                onehundredthirtysixModelObj?.orderpayment1ItemList[index] ??
                    Orderpayment1ItemModel();
            return Orderpayment1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
