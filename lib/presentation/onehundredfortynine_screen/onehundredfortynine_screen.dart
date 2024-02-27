import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/core/utils/validation_functions.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredfortynine_bloc.dart';
import 'models/onehundredfortynine_model.dart';

class OnehundredfortynineScreen extends StatelessWidget {
  OnehundredfortynineScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortynineBloc>(
      create: (context) => OnehundredfortynineBloc(OnehundredfortynineState(
        onehundredfortynineModelObj: OnehundredfortynineModel(),
      ))
        ..add(OnehundredfortynineInitialEvent()),
      child: OnehundredfortynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 28.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5.v),
                      padding: EdgeInsets.symmetric(horizontal: 29.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup43311,
                            height: 125.v,
                            width: 174.h,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogosFacebook,
                                  height: 29.adaptSize,
                                  width: 29.adaptSize,
                                  margin: EdgeInsets.only(top: 1.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogosWhatsappIcon,
                                  height: 29.adaptSize,
                                  width: 29.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 17.h,
                                    top: 1.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFemessanger0,
                                  height: 29.v,
                                  width: 28.h,
                                  margin: EdgeInsets.only(left: 17.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: CustomIconButton(
                                    height: 29.adaptSize,
                                    width: 29.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    decoration:
                                        IconButtonStyleHelper.fillLightBlue,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgLink,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Divider(
                            color: appTheme.gray20003,
                          ),
                          SizedBox(height: 14.v),
                          Text(
                            "lbl_send_feedback".tr,
                            style: CustomTextStyles.titleLarge21_1,
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    "lbl_name".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
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
                          _buildName(context),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    "lbl_mobile_number".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
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
                          _buildPhoneNumber(context),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_email".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          _buildEmail(context),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    "lbl_your_feedback".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 4.h,
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
                          SizedBox(height: 8.v),
                          _buildWriteherevalue(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSend(context),
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
        text: "lbl_contact_us".tr,
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
  Widget _buildName(BuildContext context) {
    return BlocSelector<OnehundredfortynineBloc, OnehundredfortynineState,
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
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocBuilder<OnehundredfortynineBloc, OnehundredfortynineState>(
      builder: (context, state) {
        return CustomPhoneNumber(
          country: state.selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: state.phoneNumberController,
          onTap: (Country value) {
            context
                .read<OnehundredfortynineBloc>()
                .add(ChangeCountryEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<OnehundredfortynineBloc, OnehundredfortynineState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_username_mailcom".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgMail02,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            bottom: 16.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineGray,
          fillColor: appTheme.gray10003,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWriteherevalue(BuildContext context) {
    return BlocSelector<OnehundredfortynineBloc, OnehundredfortynineState,
        TextEditingController?>(
      selector: (state) => state.writeherevalueController,
      builder: (context, writeherevalueController) {
        return CustomTextFormField(
          controller: writeherevalueController,
          hintText: "lbl_write_here".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          maxLines: 6,
          borderDecoration: TextFormFieldStyleHelper.outlineGray,
          fillColor: appTheme.gray10003,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send".tr,
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 30.v,
      ),
    );
  }
}
