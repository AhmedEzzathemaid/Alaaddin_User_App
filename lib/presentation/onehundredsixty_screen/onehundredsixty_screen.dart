import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import 'bloc/onehundredsixty_bloc.dart';
import 'models/onehundredsixty_model.dart';

class OnehundredsixtyScreen extends StatelessWidget {
  const OnehundredsixtyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtyBloc>(
      create: (context) => OnehundredsixtyBloc(OnehundredsixtyState(
        onehundredsixtyModelObj: OnehundredsixtyModel(),
      ))
        ..add(OnehundredsixtyInitialEvent()),
      child: OnehundredsixtyScreen(),
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
                "msg_enter_the_code_sent".tr,
                style: CustomTextStyles.bodyMedium15,
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 53.h),
                child: BlocSelector<OnehundredsixtyBloc, OnehundredsixtyState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_00_45".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_resend".tr,
                style: CustomTextStyles.bodyLargePrimary.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
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
