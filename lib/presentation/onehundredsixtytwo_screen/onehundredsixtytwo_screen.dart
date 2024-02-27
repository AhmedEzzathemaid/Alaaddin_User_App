import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_checkbox_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_drop_down.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredsixtytwo_bloc.dart';
import 'models/onehundredsixtytwo_model.dart';

class OnehundredsixtytwoScreen extends StatelessWidget {
  const OnehundredsixtytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtytwoBloc>(
      create: (context) => OnehundredsixtytwoBloc(OnehundredsixtytwoState(
        onehundredsixtytwoModelObj: OnehundredsixtytwoModel(),
      ))
        ..add(OnehundredsixtytwoInitialEvent()),
      child: OnehundredsixtytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildArrowDown(context),
                  SizedBox(height: 11.v),
                  Text(
                    "msg_create_new_account".tr,
                    style:
                        CustomTextStyles.headlineSmallOnSecondaryContainerBold,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_sign_up".tr,
                    style: CustomTextStyles.titleMediumGray60017,
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text(
                        "lbl_name".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildName(context),
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
                    child: _buildPhoneNumber(context),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text(
                        "lbl_email".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildActivate1(context),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_country".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.titleSmallRed600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: BlocSelector<OnehundredsixtytwoBloc,
                        OnehundredsixtytwoState, OnehundredsixtytwoModel?>(
                      selector: (state) => state.onehundredsixtytwoModelObj,
                      builder: (context, onehundredsixtytwoModelObj) {
                        return CustomDropDown(
                          hintText: "lbl_yemen".tr,
                          items: onehundredsixtytwoModelObj?.dropdownItemList ??
                              [],
                          onChanged: (value) {
                            context
                                .read<OnehundredsixtytwoBloc>()
                                .add(ChangeDropDownEvent(value: value));
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildGovernorate(context),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_select_currency".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.titleSmallRed600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: BlocSelector<OnehundredsixtytwoBloc,
                        OnehundredsixtytwoState, OnehundredsixtytwoModel?>(
                      selector: (state) => state.onehundredsixtytwoModelObj,
                      builder: (context, onehundredsixtytwoModelObj) {
                        return CustomDropDown(
                          hintText: "lbl_yer".tr,
                          items:
                              onehundredsixtytwoModelObj?.dropdownItemList3 ??
                                  [],
                          onChanged: (value) {
                            context
                                .read<OnehundredsixtytwoBloc>()
                                .add(ChangeDropDown3Event(value: value));
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 9.v),
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
                  _buildPassword(context),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text(
                        "msg_confirm_password".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildConfirmpassword(context),
                  SizedBox(height: 17.v),
                  _buildCheckmarksquareOne(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSignUp(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return SizedBox(
      height: 215.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillOnSecondaryContainer,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 168.v),
                    child: CustomIconButton(
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillGrayTL22,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDownWhiteA700,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43311Primary,
                    height: 133.v,
                    width: 186.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 37.v,
                      bottom: 42.v,
                    ),
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
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: BlocSelector<OnehundredsixtytwoBloc, OnehundredsixtytwoState,
          TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_mohmed_ahmed".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockGray600,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: BlocBuilder<OnehundredsixtytwoBloc, OnehundredsixtytwoState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context
                  .read<OnehundredsixtytwoBloc>()
                  .add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActivate(BuildContext context) {
    return CustomOutlinedButton(
      width: 81.h,
      text: "lbl_activate".tr,
    );
  }

  /// Section Widget
  Widget _buildActivate1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_username_mailcom".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          _buildActivate(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGovernorate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_governorate".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl".tr,
                        style: CustomTextStyles.titleSmallRed600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              BlocSelector<OnehundredsixtytwoBloc, OnehundredsixtytwoState,
                  OnehundredsixtytwoModel?>(
                selector: (state) => state.onehundredsixtytwoModelObj,
                builder: (context, onehundredsixtytwoModelObj) {
                  return CustomDropDown(
                    width: 153.h,
                    hintText: "lbl_shabwa".tr,
                    items: onehundredsixtytwoModelObj?.dropdownItemList1 ?? [],
                    onChanged: (value) {
                      context
                          .read<OnehundredsixtytwoBloc>()
                          .add(ChangeDropDown1Event(value: value));
                    },
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_city".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallRed600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                BlocSelector<OnehundredsixtytwoBloc, OnehundredsixtytwoState,
                    OnehundredsixtytwoModel?>(
                  selector: (state) => state.onehundredsixtytwoModelObj,
                  builder: (context, onehundredsixtytwoModelObj) {
                    return CustomDropDown(
                      width: 153.h,
                      hintText: "lbl_dar_muhaimud".tr,
                      items:
                          onehundredsixtytwoModelObj?.dropdownItemList2 ?? [],
                      onChanged: (value) {
                        context
                            .read<OnehundredsixtytwoBloc>()
                            .add(ChangeDropDown2Event(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: BlocBuilder<OnehundredsixtytwoBloc, OnehundredsixtytwoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            suffix: InkWell(
              onTap: () {
                context.read<OnehundredsixtytwoBloc>().add(
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
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: BlocBuilder<OnehundredsixtytwoBloc, OnehundredsixtytwoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmpasswordController,
            textInputAction: TextInputAction.done,
            suffix: InkWell(
              onTap: () {
                context.read<OnehundredsixtytwoBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
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
            obscureText: state.isShowPassword1,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarksquareOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 69.h,
        ),
        child: BlocSelector<OnehundredsixtytwoBloc, OnehundredsixtytwoState,
            bool?>(
          selector: (state) => state.checkmarksquareOne,
          builder: (context, checkmarksquareOne) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_i_agree_to_the_terms".tr,
              value: checkmarksquareOne,
              textStyle: theme.textTheme.titleMedium,
              onChange: (value) {
                context
                    .read<OnehundredsixtytwoBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_up2".tr,
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 34.v,
      ),
    );
  }
}
