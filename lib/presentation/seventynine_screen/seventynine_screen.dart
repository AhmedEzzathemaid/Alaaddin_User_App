import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_radio_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/seventynine_bloc.dart';
import 'models/paymentmethod2_item_model.dart';
import 'models/seventynine_model.dart';
import 'models/userprofile7_item_model.dart';
import 'widgets/paymentmethod2_item_widget.dart';
import 'widgets/userprofile7_item_widget.dart';

class SeventynineScreen extends StatelessWidget {
  const SeventynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventynineBloc>(
      create: (context) => SeventynineBloc(SeventynineState(
        seventynineModelObj: SeventynineModel(),
      ))
        ..add(SeventynineInitialEvent()),
      child: SeventynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
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
                              _buildDeliveryPoints(context),
                              _buildByCourier(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 49.adaptSize,
                                width: 49.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration:
                                    IconButtonStyleHelper.fillLightGreen,
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
                            ],
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Divider(
                          indent: 1.h,
                        ),
                        SizedBox(height: 12.v),
                        _buildCalendarEleven(context),
                        SizedBox(height: 11.v),
                        _buildPaymentMethod(context),
                        SizedBox(height: 11.v),
                        _buildCashPay(context),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_account_number".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildGroup244(context),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_cash_pay_code".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildZipcode(context),
                        SizedBox(height: 9.v),
                        _buildUserProfile(context),
                        SizedBox(height: 5.v),
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
  Widget _buildDeliveryPoints(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 122.h,
      text: "lbl_delivery_points".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL71,
      buttonTextStyle: CustomTextStyles.bodyMedium15,
    );
  }

  /// Section Widget
  Widget _buildByCourier(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 123.h,
      text: "lbl_by_courier".tr,
      margin: EdgeInsets.only(left: 10.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkCircle01,
          height: 19.adaptSize,
          width: 19.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildCalendarEleven(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
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
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_order_schedule3".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_sun_07_may_2023".tr,
                  style: CustomTextStyles.labelLargeGray60012,
                ),
              ],
            ),
          ),
          Spacer(),
          BlocSelector<SeventynineBloc, SeventynineState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 9.v,
                  bottom: 8.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<SeventynineBloc>()
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
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<SeventynineBloc, SeventynineState, SeventynineModel?>(
        selector: (state) => state.seventynineModelObj,
        builder: (context, seventynineModelObj) {
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
            itemCount: seventynineModelObj?.paymentmethod2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Paymentmethod2ItemModel model =
                  seventynineModelObj?.paymentmethod2ItemList[index] ??
                      Paymentmethod2ItemModel();
              return Paymentmethod2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCashPay(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGreenA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoNormal1,
            height: 16.v,
            width: 37.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: BlocBuilder<SeventynineBloc, SeventynineState>(
              builder: (context, state) {
                return state.seventynineModelObj!.radioList.isNotEmpty
                    ? Row(
                        children: [
                          CustomRadioButton(
                            text: "lbl_cash_pay".tr,
                            value:
                                state.seventynineModelObj?.radioList[0] ?? "",
                            groupValue: state.radioGroup,
                            onChange: (value) {
                              context
                                  .read<SeventynineBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            },
                          ),
                          CustomRadioButton(
                            width: 197.h,
                            text: "msg_account_6525454".tr,
                            value:
                                state.seventynineModelObj?.radioList[1] ?? "",
                            groupValue: state.radioGroup,
                            padding: EdgeInsets.symmetric(vertical: 2.v),
                            textStyle: CustomTextStyles.bodyMedium13,
                            isRightCheck: true,
                            onChange: (value) {
                              context
                                  .read<SeventynineBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            },
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup244(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SeventynineBloc, SeventynineState,
          TextEditingController?>(
        selector: (state) => state.group244Controller,
        builder: (context, group244Controller) {
          return CustomTextFormField(
            controller: group244Controller,
            hintText: "lbl_0000_0000_0000".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SeventynineBloc, SeventynineState,
          TextEditingController?>(
        selector: (state) => state.zipcodeController,
        builder: (context, zipcodeController) {
          return CustomTextFormField(
            controller: zipcodeController,
            hintText: "lbl_000000".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: BlocSelector<SeventynineBloc, SeventynineState, SeventynineModel?>(
        selector: (state) => state.seventynineModelObj,
        builder: (context, seventynineModelObj) {
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
            itemCount: seventynineModelObj?.userprofile7ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile7ItemModel model =
                  seventynineModelObj?.userprofile7ItemList[index] ??
                      Userprofile7ItemModel();
              return Userprofile7ItemWidget(
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
        bottom: 30.v,
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
