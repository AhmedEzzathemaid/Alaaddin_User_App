import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredthirtyfour_bloc.dart';
import 'models/onehundredthirtyfour_model.dart';

class OnehundredthirtyfourScreen extends StatelessWidget {
  const OnehundredthirtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtyfourBloc>(
      create: (context) => OnehundredthirtyfourBloc(OnehundredthirtyfourState(
        onehundredthirtyfourModelObj: OnehundredthirtyfourModel(),
      ))
        ..add(OnehundredthirtyfourInitialEvent()),
      child: OnehundredthirtyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 81.h),
                child: Row(
                  children: [
                    _buildInformation(context),
                    _buildPassword(context),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "msg_current_password".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 6.v),
              _buildPassword1(context),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_new_password".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 6.v),
              _buildNewpassword(context),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "msg_confirm_password".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 6.v),
              _buildConfirmpassword(context),
              SizedBox(height: 21.v),
              _buildSave(context),
              SizedBox(height: 5.v),
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
        text: "lbl_edit_profile".tr,
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
  Widget _buildInformation(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 130.h,
      text: "lbl_information".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL7,
      buttonTextStyle: CustomTextStyles.bodyLargeGray600,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 115.h,
      text: "lbl_password".tr,
      margin: EdgeInsets.only(left: 10.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkCircle01,
          height: 19.adaptSize,
          width: 19.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return BlocBuilder<OnehundredthirtyfourBloc, OnehundredthirtyfourState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          suffix: InkWell(
            onTap: () {
              context.read<OnehundredthirtyfourBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 15.v),
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
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return BlocBuilder<OnehundredthirtyfourBloc, OnehundredthirtyfourState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.newpasswordController,
          suffix: InkWell(
            onTap: () {
              context.read<OnehundredthirtyfourBloc>().add(
                  ChangePasswordVisibilityEvent1(
                      value: !state.isShowPassword1));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 15.v),
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
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return BlocBuilder<OnehundredthirtyfourBloc, OnehundredthirtyfourState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.confirmpasswordController,
          textInputAction: TextInputAction.done,
          suffix: InkWell(
            onTap: () {
              context.read<OnehundredthirtyfourBloc>().add(
                  ChangePasswordVisibilityEvent2(
                      value: !state.isShowPassword2));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 15.v),
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
          obscureText: state.isShowPassword2,
          borderDecoration: TextFormFieldStyleHelper.outlineGray,
          fillColor: appTheme.gray10003,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save".tr,
    );
  }
}
