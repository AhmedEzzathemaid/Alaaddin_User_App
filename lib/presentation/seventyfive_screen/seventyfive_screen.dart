import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'bloc/seventyfive_bloc.dart';
import 'models/paymentmethod_item_model.dart';
import 'models/seventyfive_model.dart';
import 'models/viewhierarchy3_item_model.dart';
import 'widgets/paymentmethod_item_widget.dart';
import 'widgets/viewhierarchy3_item_widget.dart';

class SeventyfiveScreen extends StatelessWidget {
  const SeventyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventyfiveBloc>(
      create: (context) => SeventyfiveBloc(SeventyfiveState(
        seventyfiveModelObj: SeventyfiveModel(),
      ))
        ..add(SeventyfiveInitialEvent()),
      child: SeventyfiveScreen(),
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
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "lbl_delivery_method".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            right: 82.h,
                          ),
                          child: Row(
                            children: [
                              CustomElevatedButton(
                                height: 35.v,
                                width: 122.h,
                                text: "lbl_delivery_points".tr,
                                buttonStyle: CustomButtonStyles.fillGrayTL71,
                                buttonTextStyle: CustomTextStyles.bodyMedium15,
                              ),
                              CustomElevatedButton(
                                height: 35.v,
                                width: 123.h,
                                text: "lbl_by_courier".tr,
                                margin: EdgeInsets.only(left: 10.h),
                                leftIcon: Container(
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkCircle01,
                                    height: 19.adaptSize,
                                    width: 19.adaptSize,
                                  ),
                                ),
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumWhiteA700,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
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
                        _buildPaymentMethod(context),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_item_total".tr,
                            freeText: "lbl_60_0_yer".tr,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_delivery_cost".tr,
                            freeText: "lbl_free".tr,
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
                            freeText: "lbl_70_0_yer".tr,
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
          BlocSelector<SeventyfiveBloc, SeventyfiveState, bool?>(
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
                      .read<SeventyfiveBloc>()
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
      child: BlocSelector<SeventyfiveBloc, SeventyfiveState, SeventyfiveModel?>(
        selector: (state) => state.seventyfiveModelObj,
        builder: (context, seventyfiveModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 8.v,
              );
            },
            itemCount: seventyfiveModelObj?.viewhierarchy3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Viewhierarchy3ItemModel model =
                  seventyfiveModelObj?.viewhierarchy3ItemList[index] ??
                      Viewhierarchy3ItemModel();
              return Viewhierarchy3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<SeventyfiveBloc, SeventyfiveState, SeventyfiveModel?>(
        selector: (state) => state.seventyfiveModelObj,
        builder: (context, seventyfiveModelObj) {
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
            itemCount: seventyfiveModelObj?.paymentmethodItemList.length ?? 0,
            itemBuilder: (context, index) {
              PaymentmethodItemModel model =
                  seventyfiveModelObj?.paymentmethodItemList[index] ??
                      PaymentmethodItemModel();
              return PaymentmethodItemWidget(
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
            padding: EdgeInsets.only(left: 4.h),
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
        bottom: 30.v,
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryCost(
    BuildContext context, {
    required String deliveryCostText,
    required String freeText,
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
          freeText,
          style: CustomTextStyles.titleMediumGreenA40001.copyWith(
            color: appTheme.greenA40001,
          ),
        ),
      ],
    );
  }
}
