import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/fortyone_bloc.dart';
import 'models/fortyone_model.dart';

// ignore_for_file: must_be_immutable
class FortyoneBottomsheet extends StatelessWidget {
  const FortyoneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortyoneBloc>(
      create: (context) => FortyoneBloc(FortyoneState(
        fortyoneModelObj: FortyoneModel(),
      ))
        ..add(FortyoneInitialEvent()),
      child: FortyoneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 72.h,
              child: Divider(
                color: appTheme.blueGray10001,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: BlocSelector<FortyoneBloc, FortyoneState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_by_store".tr,
                  contentPadding: EdgeInsets.only(
                    top: 9.v,
                    right: 30.h,
                    bottom: 9.v,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_choose_color".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 121.h,
            ),
            child: BlocSelector<FortyoneBloc, FortyoneState,
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
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_price".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape(),
                activeTrackColor: theme.colorScheme.primary.withOpacity(1),
                inactiveTrackColor: theme.colorScheme.secondaryContainer,
                thumbColor: appTheme.whiteA700,
                thumbShape: RoundSliderThumbShape(),
              ),
              child: RangeSlider(
                values: RangeValues(
                  0,
                  0,
                ),
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 39.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_0".tr,
                  style: CustomTextStyles.titleSmallGray600_1,
                ),
                Text(
                  "lbl_250".tr,
                  style: CustomTextStyles.titleSmallGray600_1,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
            margin: EdgeInsets.only(left: 1.h),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
