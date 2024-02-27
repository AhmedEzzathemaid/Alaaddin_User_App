import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/eightytwo_bloc.dart';
import 'models/eightytwo_model.dart';

// ignore_for_file: must_be_immutable
class EightytwoBottomsheet extends StatelessWidget {
  const EightytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EightytwoBloc>(
      create: (context) => EightytwoBloc(EightytwoState(
        eightytwoModelObj: EightytwoModel(),
      ))
        ..add(EightytwoInitialEvent()),
      child: EightytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
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
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img1904111,
                  height: 95.adaptSize,
                  width: 95.adaptSize,
                  margin: EdgeInsets.only(top: 18.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 94.h,
                    bottom: 86.v,
                  ),
                  child: CustomIconButton(
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    child: CustomImageView(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "msg_successfully_confirmed".tr,
            style: CustomTextStyles.titleLargeGreenA40001,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 265.h,
            margin: EdgeInsets.only(
              left: 35.h,
              right: 36.h,
            ),
            child: Text(
              "msg_you_can_tracking".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray600_1.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          CustomElevatedButton(
            height: 45.v,
            width: 169.h,
            text: "lbl_my_orders".tr,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700SemiBold,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
