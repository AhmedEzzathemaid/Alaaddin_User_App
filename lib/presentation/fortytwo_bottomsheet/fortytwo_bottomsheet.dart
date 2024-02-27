import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/fortytwo_bloc.dart';
import 'models/fortytwo_model.dart';

// ignore_for_file: must_be_immutable
class FortytwoBottomsheet extends StatelessWidget {
  const FortytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortytwoBloc>(
      create: (context) => FortytwoBloc(FortytwoState(
        fortytwoModelObj: FortytwoModel(),
      ))
        ..add(FortytwoInitialEvent()),
      child: FortytwoBottomsheet(),
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
        children: [
          SizedBox(
            width: 72.h,
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 14.v),
          BlocSelector<FortytwoBloc, FortytwoState, TextEditingController?>(
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
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_price".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 39.h),
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
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
