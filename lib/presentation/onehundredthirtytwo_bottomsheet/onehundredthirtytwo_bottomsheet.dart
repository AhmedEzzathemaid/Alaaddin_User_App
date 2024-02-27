import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredthirtytwo_bloc.dart';
import 'models/onehundredthirtytwo_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirtytwoBottomsheet extends StatelessWidget {
  const OnehundredthirtytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtytwoBloc>(
      create: (context) => OnehundredthirtytwoBloc(OnehundredthirtytwoState(
        onehundredthirtytwoModelObj: OnehundredthirtytwoModel(),
      ))
        ..add(OnehundredthirtytwoInitialEvent()),
      child: OnehundredthirtytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
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
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgCancel1,
            height: 95.adaptSize,
            width: 95.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_delete_account".tr,
            style: CustomTextStyles.titleMediumRed600,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 286.h,
            margin: EdgeInsets.symmetric(horizontal: 28.h),
            child: Text(
              "msg_please_note_that".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray60017_1.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_delete_account".tr,
                  margin: EdgeInsets.only(right: 4.h),
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700Bold,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_close".tr,
                  margin: EdgeInsets.only(left: 4.h),
                  buttonStyle: CustomButtonStyles.fillBlueGrayTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumGray600Bold17,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
