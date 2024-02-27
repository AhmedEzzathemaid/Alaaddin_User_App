import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import '../twentyfour_bottomsheet/widgets/s4_item_widget.dart';
import 'bloc/twentyfour_bloc.dart';
import 'models/s4_item_model.dart';
import 'models/twentyfour_model.dart';

// ignore_for_file: must_be_immutable
class TwentyfourBottomsheet extends StatelessWidget {
  const TwentyfourBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TwentyfourBloc>(
      create: (context) => TwentyfourBloc(TwentyfourState(
        twentyfourModelObj: TwentyfourModel(),
      ))
        ..add(TwentyfourInitialEvent()),
      child: TwentyfourBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 10.v,
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
            child: BlocSelector<TwentyfourBloc, TwentyfourState,
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
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildS(BuildContext context) {
    return BlocSelector<TwentyfourBloc, TwentyfourState, TwentyfourModel?>(
      selector: (state) => state.twentyfourModelObj,
      builder: (context, twentyfourModelObj) {
        return Wrap(
          runSpacing: 7.v,
          spacing: 7.h,
          children: List<Widget>.generate(
            twentyfourModelObj?.s4ItemList.length ?? 0,
            (index) {
              S4ItemModel model =
                  twentyfourModelObj?.s4ItemList[index] ?? S4ItemModel();

              return S4ItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<TwentyfourBloc>().add(
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
