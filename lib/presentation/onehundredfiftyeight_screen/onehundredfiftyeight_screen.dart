import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_checkbox_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredfiftyeight_bloc.dart';
import 'models/onehundredfiftyeight_model.dart';

class OnehundredfiftyeightScreen extends StatelessWidget {
  const OnehundredfiftyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftyeightBloc>(
      create: (context) => OnehundredfiftyeightBloc(OnehundredfiftyeightState(
        onehundredfiftyeightModelObj: OnehundredfiftyeightModel(),
      ))
        ..add(OnehundredfiftyeightInitialEvent()),
      child: OnehundredfiftyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSettings(context),
              SizedBox(height: 13.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAnimationLl3sbp58Small,
                    height: 24.v,
                    width: 25.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "lbl_hello".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAnimationLl3sbp58Small24x25,
                    height: 24.v,
                    width: 25.h,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_login".tr,
                style: CustomTextStyles.titleMediumGray60018,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Text(
                    "lbl_mobile_number".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: BlocBuilder<OnehundredfiftyeightBloc,
                    OnehundredfiftyeightState>(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country: state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context
                            .read<OnehundredfiftyeightBloc>()
                            .add(ChangeCountryEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Text(
                    "lbl_password2".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: BlocBuilder<OnehundredfiftyeightBloc,
                    OnehundredfiftyeightState>(
                  builder: (context, state) {
                    return CustomTextFormField(
                      controller: state.passwordController,
                      textInputAction: TextInputAction.done,
                      suffix: InkWell(
                        onTap: () {
                          context.read<OnehundredfiftyeightBloc>().add(
                              ChangePasswordVisibilityEvent(
                                  value: !state.isShowPassword));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      obscureText: state.isShowPassword,
                      borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      fillColor: appTheme.gray10003,
                    );
                  },
                ),
              ),
              SizedBox(height: 13.v),
              _buildRememberMe(context),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "lbl_login".tr,
                margin: EdgeInsets.symmetric(horizontal: 29.h),
              ),
              SizedBox(height: 23.v),
              _buildLineThree(context),
              SizedBox(height: 15.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 49.adaptSize,
                    width: 49.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup43316,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 49.adaptSize,
                      width: 49.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup43315,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 47.adaptSize,
                      width: 47.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup43317,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmation(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return SizedBox(
      height: 215.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 94.h,
                vertical: 38.v,
              ),
              decoration: AppDecoration.fillOnSecondaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 5.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43311Primary,
                    height: 133.v,
                    width: 186.h,
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgPath39635,
              height: 66.v,
              width: 64.h,
              alignment: Alignment.bottomLeft,
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsPrimary66x67,
              height: 66.v,
              width: 67.h,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<OnehundredfiftyeightBloc, OnehundredfiftyeightState,
              bool?>(
            selector: (state) => state.rememberMe,
            builder: (context, rememberMe) {
              return CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: rememberMe,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  context
                      .read<OnehundredfiftyeightBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.titleSmallRed600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 139.h,
              child: Divider(
                color: appTheme.gray40008,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_or".tr,
              style: CustomTextStyles.titleSmallGray600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 150.h,
              child: Divider(
                color: appTheme.gray40008,
                indent: 11.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 73.h,
        right: 73.h,
        bottom: 43.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "msg_don_t_have_an_account".tr,
              style: CustomTextStyles.bodyLargeGray600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_sign_up".tr,
              style: CustomTextStyles.titleMediumPrimaryBold,
            ),
          ),
        ],
      ),
    );
  }
}
