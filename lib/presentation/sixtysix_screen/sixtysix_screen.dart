import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'bloc/sixtysix_bloc.dart';
import 'models/sixtysix_model.dart';
import 'models/userprofile3_item_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'widgets/userprofile3_item_widget.dart';
import 'widgets/viewhierarchy1_item_widget.dart';

class SixtysixScreen extends StatelessWidget {
  const SixtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtysixBloc>(
      create: (context) => SixtysixBloc(SixtysixState(
        sixtysixModelObj: SixtysixModel(),
      ))
        ..add(SixtysixInitialEvent()),
      child: SixtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildByCourier(context),
                        SizedBox(height: 12.v),
                        Divider(
                          indent: 1.h,
                        ),
                        SizedBox(height: 12.v),
                        _buildCalendarEleven(context),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "lbl_payment_method".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildViewHierarchy(context),
                        SizedBox(height: 9.v),
                        _buildUserProfile(context),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_item_total".tr,
                            priceText: "lbl_60_0_yer".tr,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_delivery_cost".tr,
                            priceText: "lbl_50_0_yer2".tr,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        _buildDiscount(context),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_total".tr,
                            priceText: "lbl_120_0_yer".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmOrder(context),
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
        text: "lbl_checkout".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildByCourier(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillLightGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1000001076,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_by_courier".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_home".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary13x6,
            height: 13.v,
            width: 6.h,
            margin: EdgeInsets.symmetric(vertical: 18.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarEleven(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCalendar11,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_order_schedule".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          BlocSelector<SixtysixBloc, SixtysixState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<SixtysixBloc>()
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
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<SixtysixBloc, SixtysixState, SixtysixModel?>(
        selector: (state) => state.sixtysixModelObj,
        builder: (context, sixtysixModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 6.v,
              );
            },
            itemCount: sixtysixModelObj?.viewhierarchy1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Viewhierarchy1ItemModel model =
                  sixtysixModelObj?.viewhierarchy1ItemList[index] ??
                      Viewhierarchy1ItemModel();
              return Viewhierarchy1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<SixtysixBloc, SixtysixState, SixtysixModel?>(
        selector: (state) => state.sixtysixModelObj,
        builder: (context, sixtysixModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 6.v,
              );
            },
            itemCount: sixtysixModelObj?.userprofile3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile3ItemModel model =
                  sixtysixModelObj?.userprofile3ItemList[index] ??
                      Userprofile3ItemModel();
              return Userprofile3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        children: [
          Text(
            "lbl_discount".tr,
            style: theme.textTheme.titleMedium,
          ),
          Spacer(),
          Text(
            "lbl2".tr,
            style: CustomTextStyles.titleMedium_2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_20_0_yer".tr,
              style: CustomTextStyles.titleMedium_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmOrder(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm_order".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 23.v,
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryCost(
    BuildContext context, {
    required String deliveryCostText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            deliveryCostText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleMedium_2.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );
  }
}
