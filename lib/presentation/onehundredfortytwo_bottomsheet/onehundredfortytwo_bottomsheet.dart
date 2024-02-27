import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredfortytwo_bloc.dart';
import 'models/onehundredfortytwo_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredfortytwoBottomsheet extends StatelessWidget {
  const OnehundredfortytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortytwoBloc>(
      create: (context) => OnehundredfortytwoBloc(OnehundredfortytwoState(
        onehundredfortytwoModelObj: OnehundredfortytwoModel(),
      ))
        ..add(OnehundredfortytwoInitialEvent()),
      child: OnehundredfortytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
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
          SizedBox(height: 8.v),
          Text(
            "lbl_points_transfer".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "msg_number_of_points".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          BlocSelector<OnehundredfortytwoBloc, OnehundredfortytwoState,
              TextEditingController?>(
            selector: (state) => state.valueController,
            builder: (context, valueController) {
              return CustomTextFormField(
                controller: valueController,
                hintText: "lbl_300".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.outlineGray,
                fillColor: appTheme.gray10003,
              );
            },
          ),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineGreenA400011.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "lbl_amount".tr,
                    style: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
                  ),
                ),
                Text(
                  "lbl_45_yer".tr,
                  style: CustomTextStyles.titleSmallGreenA40001,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
