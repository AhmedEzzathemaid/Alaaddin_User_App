import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/onehundredfive_bloc.dart';
import 'models/onehundredfive_model.dart';
import 'models/productcard8_item_model.dart';
import 'widgets/productcard8_item_widget.dart';

class OnehundredfiveScreen extends StatelessWidget {
  const OnehundredfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiveBloc>(
      create: (context) => OnehundredfiveBloc(OnehundredfiveState(
        onehundredfiveModelObj: OnehundredfiveModel(),
      ))
        ..add(OnehundredfiveInitialEvent()),
      child: OnehundredfiveScreen(),
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
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildWidget(context),
                        SizedBox(height: 6.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_delivery_method".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            right: 53.h,
                          ),
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    top: 5.v,
                                    bottom: 4.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_by_courier".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Text(
                                        "msg_st7_shabwa_dar2".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 11.v),
                        _buildCancelOrder(context),
                        SizedBox(height: 12.v),
                        _buildProductCard(context),
                        SizedBox(height: 10.v),
                        _buildCancelOrder1(context),
                        SizedBox(height: 11.v),
                        Divider(
                          indent: 2.h,
                        ),
                        SizedBox(height: 10.v),
                        _buildBomberJackets(context),
                        SizedBox(height: 18.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_payment_method".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildCashOnDelivery(context),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildDeliveryCost(
                            context,
                            deliveryCostText: "lbl_item_total".tr,
                            priceText: "lbl_60_0_yer".tr,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
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
                          padding: EdgeInsets.only(left: 1.h),
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
        bottomNavigationBar: _buildCancelAllOrder(context),
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
        text: "lbl_order_details".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_52156564320".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 2.v),
              Text(
                "lbl_products_3".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 48.h),
                child: IntrinsicWidth(
                  child: Container(
                    decoration: AppDecoration.fillPrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFirrtimequarterpast,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text(
                                  "lbl_pending".tr,
                                  style: CustomTextStyles.bodyMediumPrimary13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Divider(
                            color: appTheme.gray20003,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 49.v,
            ),
            child: Text(
              "msg_22_01_2023_09_30".tr,
              style: CustomTextStyles.bodyMedium13,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelOrder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3040x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: _buildElHodaStore(
              context,
              text: "lbl_el_nor_store".tr,
              fortyEight: "lbl_4_8".tr,
              ratings: "lbl_574_ratings".tr,
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 107.h,
            text: "lbl_cancel_order".tr,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<OnehundredfiveBloc, OnehundredfiveState,
          OnehundredfiveModel?>(
        selector: (state) => state.onehundredfiveModelObj,
        builder: (context, onehundredfiveModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0.v),
                child: SizedBox(
                  width: 337.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray200,
                  ),
                ),
              );
            },
            itemCount: onehundredfiveModelObj?.productcard8ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcard8ItemModel model =
                  onehundredfiveModelObj?.productcard8ItemList[index] ??
                      Productcard8ItemModel();
              return Productcard8ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelOrder1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3140x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 3.v,
            ),
            child: _buildElHodaStore(
              context,
              text: "lbl_el_hoda_store".tr,
              fortyEight: "lbl_4_8".tr,
              ratings: "lbl_574_ratings".tr,
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 107.h,
            text: "lbl_cancel_order".tr,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle164,
            height: 85.adaptSize,
            width: 85.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bomber_jackets".tr,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_30_0_yer".tr,
                  style: CustomTextStyles.labelLargeRed600_1,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_color_black".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_size_l".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "lbl_qty_x1".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgUserRed600,
            height: 19.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 69.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 66.v,
            ),
            child: CustomIconButton(
              height: 25.adaptSize,
              width: 25.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgFiRrTrash,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCashOnDelivery(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCashOnDelivery30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_cash".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
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
  Widget _buildCancelAllOrder(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_cancel_all_order".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 27.v,
      ),
    );
  }

  /// Common widget
  Widget _buildElHodaStore(
    BuildContext context, {
    required String text,
    required String fortyEight,
    required String ratings,
  }) {
    return Column(
      children: [
        Text(
          text,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
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
                fortyEight,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  ratings,
                  style: CustomTextStyles.bodySmall11.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
