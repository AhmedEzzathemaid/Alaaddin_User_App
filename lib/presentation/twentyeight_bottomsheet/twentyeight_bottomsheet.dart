import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import '../twentyeight_bottomsheet/widgets/s8_item_widget.dart';
import 'bloc/twentyeight_bloc.dart';
import 'models/s8_item_model.dart';
import 'models/twentyeight_model.dart';

// ignore_for_file: must_be_immutable
class TwentyeightBottomsheet extends StatelessWidget {
  const TwentyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TwentyeightBloc>(
      create: (context) => TwentyeightBloc(TwentyeightState(
        twentyeightModelObj: TwentyeightModel(),
      ))
        ..add(TwentyeightInitialEvent()),
      child: TwentyeightBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 13.v,
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
          SizedBox(height: 8.v),
          Text(
            "lbl_categories".tr,
            style: CustomTextStyles.titleMedium_2,
          ),
          Spacer(),
          Text(
            "lbl_choose_color".tr,
            style: CustomTextStyles.titleMedium_2,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 120.h),
            child: BlocSelector<TwentyeightBloc, TwentyeightState,
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
            "lbl_choose_size".tr,
            style: CustomTextStyles.titleMedium_2,
          ),
          SizedBox(height: 9.v),
          _buildS(context),
          SizedBox(height: 8.v),
          Text(
            "lbl_price".tr,
            style: CustomTextStyles.titleMedium_2,
          ),
          SizedBox(height: 14.v),
          SliderTheme(
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
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 38.h),
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
          SizedBox(height: 14.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildS(BuildContext context) {
    return BlocSelector<TwentyeightBloc, TwentyeightState, TwentyeightModel?>(
      selector: (state) => state.twentyeightModelObj,
      builder: (context, twentyeightModelObj) {
        return Wrap(
          runSpacing: 7.v,
          spacing: 7.h,
          children: List<Widget>.generate(
            twentyeightModelObj?.s8ItemList.length ?? 0,
            (index) {
              S8ItemModel model =
                  twentyeightModelObj?.s8ItemList[index] ?? S8ItemModel();

              return S8ItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<TwentyeightBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }
}
