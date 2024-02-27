import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredsixtyone_bloc.dart';
import 'models/onehundredsixtyone_model.dart';

class OnehundredsixtyoneScreen extends StatelessWidget {
  const OnehundredsixtyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtyoneBloc>(
      create: (context) => OnehundredsixtyoneBloc(OnehundredsixtyoneState(
        onehundredsixtyoneModelObj: OnehundredsixtyoneModel(),
      ))
        ..add(OnehundredsixtyoneInitialEvent()),
      child: OnehundredsixtyoneScreen(),
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
              _buildArrowDown(context),
              SizedBox(height: 13.v),
              Text(
                "msg_forgot_password".tr,
                style: CustomTextStyles.headlineSmallOnSecondaryContainerBold,
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_enter_new_password".tr,
                style: CustomTextStyles.bodyMedium15,
              ),
              SizedBox(height: 19.v),
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
                child: BlocBuilder<OnehundredsixtyoneBloc,
                    OnehundredsixtyoneState>(
                  builder: (context, state) {
                    return CustomTextFormField(
                      controller: state.passwordController,
                      suffix: InkWell(
                        onTap: () {
                          context.read<OnehundredsixtyoneBloc>().add(
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
              SizedBox(height: 17.v),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: BlocBuilder<OnehundredsixtyoneBloc,
                    OnehundredsixtyoneState>(
                  builder: (context, state) {
                    return CustomTextFormField(
                      controller: state.confirmpasswordController,
                      textInputAction: TextInputAction.done,
                      suffix: InkWell(
                        onTap: () {
                          context.read<OnehundredsixtyoneBloc>().add(
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
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                text: "lbl_save".tr,
                margin: EdgeInsets.symmetric(horizontal: 29.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
}
