import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import 'bloc/onehundredthirtyone_bloc.dart';
import 'models/onehundredthirtyone_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirtyoneBottomsheet extends StatelessWidget {
  const OnehundredthirtyoneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtyoneBloc>(
      create: (context) => OnehundredthirtyoneBloc(OnehundredthirtyoneState(
        onehundredthirtyoneModelObj: OnehundredthirtyoneModel(),
      ))
        ..add(OnehundredthirtyoneInitialEvent()),
      child: OnehundredthirtyoneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 72.h,
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "lbl_activate_email".tr,
            style: CustomTextStyles.headlineSmallOnSecondaryContainer,
          ),
          SizedBox(height: 6.v),
          Container(
            width: 236.h,
            margin: EdgeInsets.only(
              left: 51.h,
              right: 49.h,
            ),
            child: Text(
              "msg_enter_the_code_to2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray60018.copyWith(
                height: 1.22,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.h),
            child: BlocSelector<OnehundredthirtyoneBloc,
                OnehundredthirtyoneState, TextEditingController?>(
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
          SizedBox(height: 19.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
