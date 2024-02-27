import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import '../thirtyseven_bottomsheet/widgets/s10_item_widget.dart';
import 'bloc/thirtyseven_bloc.dart';
import 'models/s10_item_model.dart';
import 'models/thirtyseven_model.dart';

// ignore_for_file: must_be_immutable
class ThirtysevenBottomsheet extends StatelessWidget {
  const ThirtysevenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtysevenBloc>(
      create: (context) => ThirtysevenBloc(ThirtysevenState(
        thirtysevenModelObj: ThirtysevenModel(),
      ))
        ..add(ThirtysevenInitialEvent()),
      child: ThirtysevenBottomsheet(),
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
            child: BlocSelector<ThirtysevenBloc, ThirtysevenState,
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
            child: BlocSelector<ThirtysevenBloc, ThirtysevenState,
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
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_choose_size".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
          ),
          SizedBox(height: 14.v),
          _buildS(context),
          SizedBox(height: 12.v),
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
          SizedBox(height: 22.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildS(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<ThirtysevenBloc, ThirtysevenState, ThirtysevenModel?>(
        selector: (state) => state.thirtysevenModelObj,
        builder: (context, thirtysevenModelObj) {
          return Wrap(
            runSpacing: 7.v,
            spacing: 7.h,
            children: List<Widget>.generate(
              thirtysevenModelObj?.s10ItemList.length ?? 0,
              (index) {
                S10ItemModel model =
                    thirtysevenModelObj?.s10ItemList[index] ?? S10ItemModel();

                return S10ItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<ThirtysevenBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
