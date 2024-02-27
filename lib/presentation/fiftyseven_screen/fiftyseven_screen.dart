import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'bloc/fiftyseven_bloc.dart';
import 'models/fiftyseven_model.dart';
import 'models/productcard1_item_model.dart';
import 'widgets/productcard1_item_widget.dart';

class FiftysevenScreen extends StatelessWidget {
  const FiftysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiftysevenBloc>(
      create: (context) => FiftysevenBloc(FiftysevenState(
        fiftysevenModelObj: FiftysevenModel(),
      ))
        ..add(FiftysevenInitialEvent()),
      child: FiftysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                children: [
                  _buildProductCard(context),
                  SizedBox(height: 12.v),
                  Divider(
                    color: appTheme.gray20004,
                  ),
                  SizedBox(height: 16.v),
                  _buildOnlyDifferent(context),
                  SizedBox(height: 16.v),
                  _buildSelectedFeatures(context),
                  SizedBox(height: 12.v),
                  SizedBox(
                    height: 599.v,
                    width: 338.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(right: 1.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 19.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 3.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 51.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_overall_rating2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 4.v),
                                          Row(
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgSignal,
                                                height: 13.adaptSize,
                                                width: 13.adaptSize,
                                                margin: EdgeInsets.only(
                                                  top: 1.v,
                                                  bottom: 2.v,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.h),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "lbl_4_8".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallff1a232b_1,
                                                      ),
                                                      TextSpan(
                                                        text: "lbl_5".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallff7a7f8a,
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 22.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 13.adaptSize,
                                              width: 13.adaptSize,
                                              margin: EdgeInsets.only(
                                                top: 1.v,
                                                bottom: 2.v,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_3_2".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallff1a232b_1,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_5".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallff7a7f8a,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 97.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_discount".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray600_2,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              "lbl_20".tr,
                                              style: CustomTextStyles
                                                  .titleSmallRed600_1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 25.v),
                                        child: Text(
                                          "lbl2".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray600_2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 19.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_delivery_points".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 8.v),
                                          Text(
                                            "lbl_within_2_days2".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 26.v),
                                        child: Text(
                                          "lbl_within_3_days".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 19.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_by_courier".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 7.v),
                                          Text(
                                            "lbl_within_4_days2".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 25.v),
                                        child: Text(
                                          "lbl_within_6_days".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_maximum_buying".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray600_2,
                                        ),
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_10".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 86.h,
                                        top: 24.v,
                                      ),
                                      child: Text(
                                        "lbl_8".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 29.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_product_return".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            "lbl_available2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGreenA40001_1,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 22.v),
                                        child: Text(
                                          "lbl_unavailable".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray600_2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 86.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_polyester2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 6.v),
                                          Text(
                                            "lbl_yes".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 24.v),
                                        child: Text(
                                          "lbl_no".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Text(
                                  "lbl_zipper_closure2".tr,
                                  style: CustomTextStyles.titleSmallGray600_2,
                                ),
                                SizedBox(height: 6.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 86.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_yes".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      Text(
                                        "lbl_no".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 34.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_item_type2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 6.v),
                                          Text(
                                            "msg_outerwear_coats".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 24.v),
                                        child: Text(
                                          "lbl_outerwear".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 39.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_style2".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray600_2,
                                          ),
                                          SizedBox(height: 8.v),
                                          Text(
                                            "lbl_slim_jacket".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 26.v),
                                        child: Text(
                                          "lbl_big_jacket".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 61.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 121.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 181.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 242.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 237.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 179.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 120.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 62.v),
                            child: SizedBox(
                              width: 337.h,
                              child: Divider(
                                color: appTheme.gray20004,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 337.h,
                            child: Divider(
                              color: appTheme.gray20004,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_comparison_result".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonThree(
          imagePath: ImageConstant.imgMegaphoneOnsecondarycontainer,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 1.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return SizedBox(
      height: 180.v,
      child: BlocSelector<FiftysevenBloc, FiftysevenState, FiftysevenModel?>(
        selector: (state) => state.fiftysevenModelObj,
        builder: (context, fiftysevenModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 11.h,
              );
            },
            itemCount: fiftysevenModelObj?.productcard1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcard1ItemModel model =
                  fiftysevenModelObj?.productcard1ItemList[index] ??
                      Productcard1ItemModel();
              return Productcard1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlyDifferent(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
            ),
            child: Text(
              "lbl_only_different".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          BlocSelector<FiftysevenBloc, FiftysevenState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(top: 1.v),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<FiftysevenBloc>()
                      .add(ChangeSwitchEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectedFeatures(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_selected_features".tr,
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 12.v,
                  width: 6.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 294.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 4.h,
            ),
            child: Text(
              "msg_you_can_create_your".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
