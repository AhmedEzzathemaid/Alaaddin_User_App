import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_radio_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredtwentysix_bloc.dart';
import 'models/onehundredtwentysix_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredtwentysixPage extends StatelessWidget {
  const OnehundredtwentysixPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentysixBloc>(
      create: (context) => OnehundredtwentysixBloc(OnehundredtwentysixState(
        onehundredtwentysixModelObj: OnehundredtwentysixModel(),
      ))
        ..add(OnehundredtwentysixInitialEvent()),
      child: OnehundredtwentysixPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                children: [
                  _buildUser(context),
                  SizedBox(height: 9.v),
                  _buildWalletThirtyOne(context),
                  SizedBox(height: 15.v),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.all(9.h),
                    decoration: AppDecoration.outlineGray30003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle1(context),
                        SizedBox(height: 8.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 6.v),
                        _buildRefundOne(context),
                        SizedBox(height: 6.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 6.v),
                        _buildTitle3(context),
                        SizedBox(height: 9.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 8.v),
                        _buildTitle5(context),
                        SizedBox(height: 10.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 8.v),
                        _buildAddress1(context),
                        SizedBox(height: 9.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 8.v),
                        _buildMyaddressesvalue1(context),
                        SizedBox(height: 9.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 10.v),
                        _buildTitle7(context),
                        SizedBox(height: 8.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 10.v),
                        _buildTermAndCondition1(context),
                        SizedBox(height: 10.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 8.v),
                        _buildTitle9(context),
                        SizedBox(height: 9.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShare1,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  "lbl_share_app".tr,
                                  style: CustomTextStyles
                                      .bodyMediumOnSecondaryContainer15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Divider(
                          color: appTheme.gray20002,
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTurnOff1,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "lbl_log_out".tr,
                                  style: CustomTextStyles.bodyMediumRed60015,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl_language".tr,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildLanguage(context),
                  SizedBox(height: 13.v),
                  Text(
                    "lbl_version_1_1_0".tr,
                    style: CustomTextStyles.labelLargeGray600,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgUserPrimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_profile".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationIcon,
          margin: EdgeInsets.fromLTRB(18.h, 11.v, 18.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 53.adaptSize,
            width: 53.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillGrayTL4,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserPrimary53x53,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_mohmed_ahmed".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Text(
                  "lbl_20_123_456_789".tr,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 6.h,
              bottom: 9.v,
            ),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGrayTL19,
              child: CustomImageView(
                imagePath: ImageConstant.imgFiRrPencil,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWalletThirtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillGreenA400012.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWallet3132x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_my_wallet".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Text(
                          "lbl_500_yer".tr,
                          style: CustomTextStyles.titleSmallGreenA40001,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightPrimary13x6,
                    height: 12.v,
                    width: 6.h,
                    margin: EdgeInsets.only(
                      top: 13.v,
                      right: 4.h,
                      bottom: 12.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 13.h),
              padding: EdgeInsets.all(9.h),
              decoration: AppDecoration.fillRed6001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupGray700,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 11.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "lbl_coupons".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightPrimary13x6,
                    height: 12.v,
                    width: 6.h,
                    margin: EdgeInsets.only(
                      top: 11.v,
                      right: 5.h,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.titleController,
      builder: (context, titleController) {
        return CustomTextFormField(
          width: 315.h,
          controller: titleController,
          hintText: "lbl_compare_list".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitle1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 22.v,
            width: 115.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                _buildTitle(context),
                CustomImageView(
                  imagePath: ImageConstant.imgAbTesting122x22,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRefundOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 111.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRefund1,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    "lbl_returns".tr,
                    style: CustomTextStyles.bodyMediumOnSecondaryContainer15,
                  ),
                ),
                Container(
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.outlineWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "lbl_2".tr,
                    style: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle2(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.titleController1,
      builder: (context, titleController1) {
        return CustomTextFormField(
          width: 315.h,
          controller: titleController1,
          hintText: "msg_coupons_and_certificates".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitle3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 23.v,
            width: 194.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                _buildTitle2(context),
                CustomImageView(
                  imagePath: ImageConstant.imgCoupons1,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle4(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.titleController2,
      builder: (context, titleController2) {
        return CustomTextFormField(
          width: 315.h,
          controller: titleController2,
          hintText: "lbl_stores2".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitle5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20.v,
            width: 73.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                _buildTitle4(context),
                CustomImageView(
                  imagePath: ImageConstant.imgShop1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.addressController,
      builder: (context, addressController) {
        return CustomTextFormField(
          width: 315.h,
          controller: addressController,
          hintText: "lbl_my_addresses".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddress1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20.v,
            width: 121.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                _buildAddress(context),
                CustomImageView(
                  imagePath: ImageConstant.imgDestination1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMyaddressesvalue(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.myaddressesvalueController,
      builder: (context, myaddressesvalueController) {
        return CustomTextFormField(
          width: 315.h,
          controller: myaddressesvalueController,
          hintText: "lbl_contact_us".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMyaddressesvalue1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20.v,
            width: 101.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                _buildMyaddressesvalue(context),
                CustomImageView(
                  imagePath: ImageConstant.imgPhoneCall1,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle6(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.titleController3,
      builder: (context, titleController3) {
        return CustomTextFormField(
          width: 315.h,
          controller: titleController3,
          hintText: "lbl_help".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitle7(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.v,
            width: 61.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                _buildTitle6(context),
                CustomImageView(
                  imagePath: ImageConstant.imgInfo1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTermAndCondition(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.termAndConditionController,
      builder: (context, termAndConditionController) {
        return CustomTextFormField(
          width: 315.h,
          controller: termAndConditionController,
          hintText: "msg_terms_and_conditions".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          alignment: Alignment.bottomRight,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTermAndCondition1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20.v,
            width: 171.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                _buildTermAndCondition(context),
                CustomImageView(
                  imagePath: ImageConstant.imgUnknownMail1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElementsPrimary,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle8(BuildContext context) {
    return BlocSelector<OnehundredtwentysixBloc, OnehundredtwentysixState,
        TextEditingController?>(
      selector: (state) => state.titleController4,
      builder: (context, titleController4) {
        return CustomTextFormField(
          width: 315.h,
          controller: titleController4,
          hintText: "lbl_notifications".tr,
          hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer15,
          textInputAction: TextInputAction.done,
          alignment: Alignment.bottomCenter,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
          borderDecoration: TextFormFieldStyleHelper.underLineGray2,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitle9(BuildContext context) {
    return Container(
      height: 21.v,
      width: 309.h,
      margin: EdgeInsets.only(left: 6.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildTitle8(context),
          CustomImageView(
            imagePath: ImageConstant.imgNotification2,
            height: 21.adaptSize,
            width: 21.adaptSize,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocBuilder<OnehundredtwentysixBloc, OnehundredtwentysixState>(
        builder: (context, state) {
          return state.onehundredtwentysixModelObj!.radioList.isNotEmpty
              ? Row(
                  children: [
                    CustomRadioButton(
                      text: "lbl_english".tr,
                      value:
                          state.onehundredtwentysixModelObj?.radioList[0] ?? "",
                      groupValue: state.language,
                      padding: EdgeInsets.fromLTRB(7.h, 6.v, 30.h, 6.v),
                      textStyle: CustomTextStyles.bodyMediumGreenA40001_1,
                      decoration: RadioStyleHelper.outlineGrayTL8,
                      onChange: (value) {
                        context
                            .read<OnehundredtwentysixBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: CustomRadioButton(
                        text: "lbl_arabic".tr,
                        value:
                            state.onehundredtwentysixModelObj?.radioList[1] ??
                                "",
                        groupValue: state.language,
                        padding: EdgeInsets.fromLTRB(5.h, 7.v, 30.h, 7.v),
                        textStyle: theme.textTheme.bodyMedium,
                        decoration: RadioStyleHelper.outlineGrayTL8,
                        onChange: (value) {
                          context
                              .read<OnehundredtwentysixBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                  ],
                )
              : Container();
        },
      ),
    );
  }
}
