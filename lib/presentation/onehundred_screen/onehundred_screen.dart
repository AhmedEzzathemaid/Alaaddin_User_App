import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundred_bloc.dart';
import 'models/onehundred_model.dart';

class OnehundredScreen extends StatelessWidget {
  const OnehundredScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredBloc>(
      create: (context) => OnehundredBloc(OnehundredState(
        onehundredModelObj: OnehundredModel(),
      ))
        ..add(OnehundredInitialEvent()),
      child: OnehundredScreen(),
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
                        SizedBox(height: 5.v),
                        _buildDeliveryPoint(context),
                        SizedBox(height: 12.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 9.v),
                        _buildCancelOrder1(context),
                        SizedBox(height: 12.v),
                        _buildBomberJackets1(context),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildBomberJackets(
                            context,
                            image: ImageConstant.imgRectangle163,
                            bomberJackets: "lbl_bomber_jackets".tr,
                            price: "lbl_30_0_yer".tr,
                            colorBlack: "lbl_color_black".tr,
                            sizeL: "lbl_size_l".tr,
                            qtyXOne: "lbl_qty_x1".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Divider(
                          indent: 2.h,
                        ),
                        SizedBox(height: 12.v),
                        _buildCancelOrder3(context),
                        SizedBox(height: 11.v),
                        Divider(
                          indent: 2.h,
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildBomberJackets(
                            context,
                            image: ImageConstant.imgRectangle164,
                            bomberJackets: "lbl_bomber_jackets".tr,
                            price: "lbl_30_0_yer".tr,
                            colorBlack: "lbl_color_black".tr,
                            sizeL: "lbl_size_l".tr,
                            qtyXOne: "lbl_qty_x1".tr,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_payment_method".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildPaymentmethodvalue(context),
                        SizedBox(height: 8.v),
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
  Widget _buildDeliveryPoint(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup118,
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
                  "lbl_delivery_point".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_elsafa2".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Text(
              "lbl_2_1_km2".tr,
              style: CustomTextStyles.bodySmallRed600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 6.v,
              bottom: 8.v,
            ),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgLogosGoogleMaps,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelOrder(BuildContext context) {
    return CustomOutlinedButton(
      width: 107.h,
      text: "lbl_cancel_order".tr,
      margin: EdgeInsets.symmetric(vertical: 4.v),
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
              ratingText: "lbl_4_8".tr,
              ratingCountText: "lbl_574_ratings".tr,
            ),
          ),
          Spacer(),
          _buildCancelOrder(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
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
            imagePath: ImageConstant.imgRectangle1685x85,
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
                Row(
                  children: [
                    Text(
                      "lbl_30_0_yer".tr,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_49_9_yer2".tr,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_color_black".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                _buildSizeL(
                  context,
                  sizeL: "lbl_size_l".tr,
                  qtyXOne: "lbl_qty_x1".tr,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 66.v),
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
  Widget _buildCancelOrder2(BuildContext context) {
    return CustomOutlinedButton(
      width: 107.h,
      text: "lbl_cancel_order".tr,
      margin: EdgeInsets.only(
        top: 5.v,
        bottom: 4.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelOrder3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3140x40,
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
              text: "lbl_el_hoda_store".tr,
              ratingText: "lbl_4_8".tr,
              ratingCountText: "lbl_574_ratings".tr,
            ),
          ),
          Spacer(),
          _buildCancelOrder2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentmethodvalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child:
          BlocSelector<OnehundredBloc, OnehundredState, TextEditingController?>(
        selector: (state) => state.paymentmethodvalueController,
        builder: (context, paymentmethodvalueController) {
          return CustomTextFormField(
            controller: paymentmethodvalueController,
            hintText: "lbl_cash".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 6.v, 9.h, 7.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgCashOnDelivery30x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 43.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 12.v,
              right: 30.h,
              bottom: 12.v,
            ),
          );
        },
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
        bottom: 31.v,
      ),
    );
  }

  /// Common widget
  Widget _buildSizeL(
    BuildContext context, {
    required String sizeL,
    required String qtyXOne,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            sizeL,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            qtyXOne,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildElHodaStore(
    BuildContext context, {
    required String text,
    required String ratingText,
    required String ratingCountText,
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
                ratingText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  ratingCountText,
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
  Widget _buildBomberJackets(
    BuildContext context, {
    required String image,
    required String bomberJackets,
    required String price,
    required String colorBlack,
    required String sizeL,
    required String qtyXOne,
  }) {
    return Container(
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
            imagePath: image,
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
                  bomberJackets,
                  style: CustomTextStyles.titleMedium17.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  price,
                  style: CustomTextStyles.labelLargeRed600_1.copyWith(
                    color: appTheme.red600,
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  colorBlack,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        sizeL,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        qtyXOne,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 66.v),
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
