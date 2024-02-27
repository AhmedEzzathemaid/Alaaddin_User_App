import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredthirteen_bloc.dart';
import 'models/onehundredthirteen_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirteenBottomsheet extends StatelessWidget {
  const OnehundredthirteenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirteenBloc>(
      create: (context) => OnehundredthirteenBloc(OnehundredthirteenState(
        onehundredthirteenModelObj: OnehundredthirteenModel(),
      ))
        ..add(OnehundredthirteenInitialEvent()),
      child: OnehundredthirteenBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
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
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_delivery_point".tr,
              style: CustomTextStyles.headlineSmall_1,
            ),
          ),
          SizedBox(height: 6.v),
          _buildSettings(context),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray20004,
          ),
          SizedBox(height: 7.v),
          _buildLinkedin(context),
          SizedBox(height: 8.v),
          Divider(
            color: appTheme.gray20004,
          ),
          SizedBox(height: 6.v),
          _buildClock(context),
          SizedBox(height: 6.v),
          Divider(
            color: appTheme.gray20004,
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                  child: CustomIconButton(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillPrimaryTL5,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_waiting_time_for".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      Text(
                        "lbl_5_days".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Divider(
            color: appTheme.gray20004,
          ),
          SizedBox(height: 8.v),
          _buildInbox(context),
          SizedBox(height: 11.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
            margin: EdgeInsets.symmetric(horizontal: 11.h),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 58.adaptSize,
          width: 58.adaptSize,
          padding: EdgeInsets.all(15.h),
          decoration: IconButtonStyleHelper.fillIndigoATL29,
          child: CustomImageView(
            imagePath: ImageConstant.imgSettingsWhiteA700,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_el_noor".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(
                width: 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                    ),
                    Text(
                      "lbl_4_5".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "lbl_235_ratings".tr,
                        style: CustomTextStyles.bodySmall11,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "lbl_2_1_km".tr,
                style: CustomTextStyles.labelLargeRed600_1,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 9.v,
          ),
          child: CustomIconButton(
            height: 39.adaptSize,
            width: 39.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGrayTL19,
            child: CustomImageView(
              imagePath: ImageConstant.imgSupportHeart,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 13.h,
            top: 10.v,
            bottom: 9.v,
          ),
          child: CustomIconButton(
            height: 39.adaptSize,
            width: 39.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGreenA,
            child: CustomImageView(
              imagePath: ImageConstant.imgCall,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLinkedin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 33.adaptSize,
          width: 33.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: IconButtonStyleHelper.fillPrimaryTL5,
          child: CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
          ),
        ),
        Container(
          height: 36.v,
          width: 224.h,
          margin: EdgeInsets.only(left: 9.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "msg_delivery_point_address".tr,
                  style: CustomTextStyles.titleSmall15_1,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 6.v),
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 42.h,
                              right: 10.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 12.v),
                                  child: Text(
                                    "msg_st7_shabwa_dar2".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogosGoogleMaps,
                                  height: 21.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(
                                    left: 46.h,
                                    bottom: 8.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Divider(
                          color: appTheme.gray20004,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 35.adaptSize,
          width: 35.adaptSize,
          padding: EdgeInsets.all(6.h),
          decoration: IconButtonStyleHelper.outlineBlueGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgLogosGoogleMaps,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildClock(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 92.v,
          ),
          child: CustomIconButton(
            height: 33.adaptSize,
            width: 33.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL5,
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_work_time".tr,
                  style: CustomTextStyles.titleSmall15_1,
                ),
                SizedBox(height: 1.v),
                _buildSunday(
                  context,
                  sunday: "lbl_saturday".tr,
                  time: "lbl_09_00am_10_00pm".tr,
                ),
                SizedBox(height: 2.v),
                _buildSunday(
                  context,
                  sunday: "lbl_sunday".tr,
                  time: "lbl_09_00am_10_00pm".tr,
                ),
                SizedBox(height: 2.v),
                _buildSunday(
                  context,
                  sunday: "lbl_monday".tr,
                  time: "lbl_09_00am_10_00pm".tr,
                ),
                SizedBox(height: 2.v),
                _buildSunday(
                  context,
                  sunday: "lbl_tuesday".tr,
                  time: "lbl_09_00am_10_00pm".tr,
                ),
                SizedBox(height: 2.v),
                _buildSunday(
                  context,
                  sunday: "lbl_wednesday".tr,
                  time: "lbl_09_00am_10_00pm".tr,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 25.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 41.v,
              ),
              child: CustomIconButton(
                height: 33.adaptSize,
                width: 33.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgInbox,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_how_does_reach_the".tr,
                      style: CustomTextStyles.titleSmall15_1,
                    ),
                    SizedBox(
                      width: 269.h,
                      child: Text(
                        "msg_lorem_ipsum_is_placeholder2".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSunday(
    BuildContext context, {
    required String sunday,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            sunday,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Text(
          time,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
