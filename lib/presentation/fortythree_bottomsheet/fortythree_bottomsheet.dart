import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_radio_button.dart';
import 'bloc/fortythree_bloc.dart';
import 'models/fortythree_model.dart';

// ignore_for_file: must_be_immutable
class FortythreeBottomsheet extends StatelessWidget {
  const FortythreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortythreeBloc>(
      create: (context) => FortythreeBloc(FortythreeState(
        fortythreeModelObj: FortythreeModel(),
      ))
        ..add(FortythreeInitialEvent()),
      child: FortythreeBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_sort_by".tr,
              style: CustomTextStyles.titleLargePrimary_1,
            ),
          ),
          SizedBox(height: 4.v),
          _buildSortBy(context),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSortBy(BuildContext context) {
    return BlocBuilder<FortythreeBloc, FortythreeState>(
      builder: (context, state) {
        return state.fortythreeModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  CustomRadioButton(
                    width: 317.h,
                    text: "lbl_new_arraival".tr,
                    value: state.fortythreeModelObj?.radioList[0] ?? "",
                    groupValue: state.sortBy,
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.h,
                      vertical: 14.v,
                    ),
                    isRightCheck: true,
                    onChange: (value) {
                      context
                          .read<FortythreeBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: CustomRadioButton(
                      width: 317.h,
                      text: "lbl_most_watched".tr,
                      value: state.fortythreeModelObj?.radioList[1] ?? "",
                      groupValue: state.sortBy,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 14.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FortythreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: CustomRadioButton(
                      width: 317.h,
                      text: "lbl_most_rated".tr,
                      value: state.fortythreeModelObj?.radioList[2] ?? "",
                      groupValue: state.sortBy,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 14.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FortythreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: CustomRadioButton(
                      width: 317.h,
                      text: "lbl_least_rated".tr,
                      value: state.fortythreeModelObj?.radioList[3] ?? "",
                      groupValue: state.sortBy,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 14.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FortythreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: CustomRadioButton(
                      width: 317.h,
                      text: "lbl_lowest_price".tr,
                      value: state.fortythreeModelObj?.radioList[4] ?? "",
                      groupValue: state.sortBy,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 13.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FortythreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: CustomRadioButton(
                      width: 317.h,
                      text: "lbl_highest_price".tr,
                      value: state.fortythreeModelObj?.radioList[5] ?? "",
                      groupValue: state.sortBy,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 13.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FortythreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
