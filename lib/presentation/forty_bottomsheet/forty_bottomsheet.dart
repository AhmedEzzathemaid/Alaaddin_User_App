import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import '../forty_bottomsheet/widgets/s14_item_widget.dart';
import 'bloc/forty_bloc.dart';
import 'models/forty_model.dart';
import 'models/s14_item_model.dart';

// ignore_for_file: must_be_immutable
class FortyBottomsheet extends StatelessWidget {
  const FortyBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortyBloc>(
      create: (context) => FortyBloc(FortyState(
        fortyModelObj: FortyModel(),
      ))
        ..add(FortyInitialEvent()),
      child: FortyBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 7.v,
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
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: BlocSelector<FortyBloc, FortyState, TextEditingController?>(
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
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_choose_size".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: BlocSelector<FortyBloc, FortyState, FortyModel?>(
              selector: (state) => state.fortyModelObj,
              builder: (context, fortyModelObj) {
                return Wrap(
                  runSpacing: 7.v,
                  spacing: 7.h,
                  children: List<Widget>.generate(
                    fortyModelObj?.s14ItemList.length ?? 0,
                    (index) {
                      S14ItemModel model =
                          fortyModelObj?.s14ItemList[index] ?? S14ItemModel();

                      return S14ItemWidget(
                        model,
                        onSelectedChipView: (value) {
                          context.read<FortyBloc>().add(UpdateChipViewEvent(
                              index: index, isSelected: value));
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
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
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
