import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredseventeen_bloc.dart';
import 'models/onehundredseventeen_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredseventeenBottomsheet extends StatelessWidget {
  const OnehundredseventeenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredseventeenBloc>(
      create: (context) => OnehundredseventeenBloc(OnehundredseventeenState(
        onehundredseventeenModelObj: OnehundredseventeenModel(),
      ))
        ..add(OnehundredseventeenInitialEvent()),
      child: OnehundredseventeenBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 10.v,
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
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgReorder1,
            height: 113.adaptSize,
            width: 113.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_are_you_sure_to5".tr,
            style: CustomTextStyles.titleLarge21,
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: 45.v,
                  text: "lbl_confirm".tr,
                  margin: EdgeInsets.only(right: 3.h),
                  buttonStyle: CustomButtonStyles.outlineIndigoD,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA70017,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 45.v,
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(left: 3.h),
                  buttonStyle: CustomButtonStyles.fillGrayTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumGray60017,
                ),
              ),
            ],
          ),
          SizedBox(height: 23.v),
        ],
      ),
    );
  }
}
