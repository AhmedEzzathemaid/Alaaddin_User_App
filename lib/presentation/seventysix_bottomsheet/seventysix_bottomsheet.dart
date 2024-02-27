import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/seventysix_bloc.dart';
import 'models/seventysix_model.dart';

// ignore_for_file: must_be_immutable
class SeventysixBottomsheet extends StatelessWidget {
  const SeventysixBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventysixBloc>(
      create: (context) => SeventysixBloc(SeventysixState(
        seventysixModelObj: SeventysixModel(),
      ))
        ..add(SeventysixInitialEvent()),
      child: SeventysixBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
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
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_order_schedule2".tr,
              style: CustomTextStyles.headlineSmall_1,
            ),
          ),
          SizedBox(height: 24.v),
          BlocBuilder<SeventysixBloc, SeventysixState>(
            builder: (context, state) {
              return SizedBox(
                height: 295.v,
                width: 325.h,
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    selectedDayHighlightColor: Color(0XFFBFA274),
                    firstDayOfWeek: 0,
                    weekdayLabelTextStyle: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                    ),
                    selectedDayTextStyle: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                    dayTextStyle: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                    weekdayLabels: [
                      "SUN",
                      "MON",
                      "TUE",
                      "WED",
                      "THU",
                      "FRI",
                      "SAT"
                    ],
                    dayBorderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  value: state.selectedDatesFromCalendar1 ?? [],
                  onValueChanged: (dates) {
                    state.selectedDatesFromCalendar1 = dates;
                  },
                ),
              );
            },
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_time".tr,
                    style: CustomTextStyles.titleLargeSFProDisplayBlack900,
                  ),
                ),
                Spacer(),
                Container(
                  width: 74.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillGrayE.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_11".tr,
                          style: CustomTextStyles
                              .titleLargeSFProDisplayBlack900Regular,
                        ),
                      ),
                      Container(
                        height: 33.adaptSize,
                        width: 33.adaptSize,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl3".tr,
                                style: CustomTextStyles
                                    .titleLargeSFProDisplayBlack900Regular,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_302".tr,
                                style:
                                    CustomTextStyles.titleLargePoppinsBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillGrayE.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Row(
                    children: [
                      CustomOutlinedButton(
                        width: 51.h,
                        text: "lbl_am".tr,
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeSFProTextBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 8.v,
                          bottom: 7.v,
                        ),
                        child: Text(
                          "lbl_pm".tr,
                          style: CustomTextStyles.bodyMediumSFProTextBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
            margin: EdgeInsets.symmetric(horizontal: 9.h),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
