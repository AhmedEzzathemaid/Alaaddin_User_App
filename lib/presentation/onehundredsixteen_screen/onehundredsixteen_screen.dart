import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/onehundredsixteen_bloc.dart';
import 'models/onehundredsixteen_model.dart';

class OnehundredsixteenScreen extends StatelessWidget {
  const OnehundredsixteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixteenBloc>(
      create: (context) => OnehundredsixteenBloc(OnehundredsixteenState(
        onehundredsixteenModelObj: OnehundredsixteenModel(),
      ))
        ..add(OnehundredsixteenInitialEvent()),
      child: OnehundredsixteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredsixteenBloc, OnehundredsixteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 13.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildReorder1(context),
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
                              padding: EdgeInsets.only(left: 2.h),
                              child: Row(
                                children: [
                                  CustomIconButton(
                                    height: 49.adaptSize,
                                    width: 49.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    decoration:
                                        IconButtonStyleHelper.fillLightGreen,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup1000001076,
                                    ),
                                  ),
                                  Padding(
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
                                          "lbl_home".tr,
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
                              color: appTheme.gray20003,
                              indent: 2.h,
                            ),
                            SizedBox(height: 9.v),
                            _buildPlay(context),
                            SizedBox(height: 12.v),
                            Divider(
                              color: appTheme.gray20003,
                              indent: 2.h,
                            ),
                            SizedBox(height: 11.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: _buildElHodaStore(
                                context,
                                image: ImageConstant.imgRectangle3040x40,
                                elHodaStore: "lbl_el_nor_store".tr,
                                fortyEight: "lbl_4_8".tr,
                                ratings: "lbl_574_ratings".tr,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            _buildFortyFive1(context),
                            SizedBox(height: 9.v),
                            _buildBomberJackets2(context),
                            SizedBox(height: 10.v),
                            Divider(
                              indent: 2.h,
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: _buildElHodaStore(
                                context,
                                image: ImageConstant.imgRectangle3140x40,
                                elHodaStore: "lbl_el_hoda_store".tr,
                                fortyEight: "lbl_4_8".tr,
                                ratings: "lbl_574_ratings".tr,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            _buildBomberJackets4(context),
                            SizedBox(height: 13.v),
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
                            SizedBox(height: 4.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildDeliveryCost(
                                context,
                                deliveryCost: "lbl_item_total".tr,
                                price: "lbl_60_0_yer".tr,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildDeliveryCost(
                                context,
                                deliveryCost: "lbl_delivery_cost".tr,
                                price: "lbl_50_0_yer2".tr,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            _buildDiscount(context),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildDeliveryCost(
                                context,
                                deliveryCost: "lbl_total".tr,
                                price: "lbl_120_0_yer".tr,
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
            bottomNavigationBar: _buildInvoicePrint(context),
          ),
        );
      },
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
  Widget _buildReorder(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      width: 96.h,
      text: "lbl_re_order".tr,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildFinished(BuildContext context) {
    return CustomElevatedButton(
      height: 27.v,
      width: 105.h,
      text: "lbl_finished".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFirrboxalt,
          height: 17.adaptSize,
          width: 17.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL41,
      buttonTextStyle: CustomTextStyles.bodyMediumGreenA40001_1,
    );
  }

  /// Section Widget
  Widget _buildReorder1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_52156564320".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 3.v),
                Text(
                  "msg_22_01_2023_09_30".tr,
                  style: CustomTextStyles.bodyMedium13,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_products_3".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                _buildReorder(context),
                SizedBox(height: 9.v),
                _buildFinished(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlay(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 49.adaptSize,
            width: 49.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_captain".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_khaled_ahmed".tr,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 26.v,
            width: 31.h,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineAmber.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSignalAmber700,
              height: 15.v,
              width: 16.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      width: 35.h,
      text: "lbl_4_5".tr,
      margin: EdgeInsets.only(left: 7.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 1.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalGray600,
          height: 10.adaptSize,
          width: 10.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.labelMediumGray600Medium,
    );
  }

  /// Section Widget
  Widget _buildFortyFive1(BuildContext context) {
    return Container(
      width: 337.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1685x85,
                height: 85.adaptSize,
                width: 85.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
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
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              SizedBox(
                height: 28.v,
                width: 35.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomIconButton(
                      height: 28.v,
                      width: 35.h,
                      padding: EdgeInsets.all(9.h),
                      decoration:
                          IconButtonStyleHelper.outlineOnSecondaryContainer,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserOnsecondarycontainer,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 28.v,
                        width: 35.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettingsPrimary,
                          height: 10.v,
                          width: 13.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineOnSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroupOnsecondarycontainer,
                  ),
                ),
              ),
              _buildFortyFive(context),
              Container(
                height: 28.v,
                width: 35.h,
                margin: EdgeInsets.only(left: 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsOnsecondarycontainer,
                  height: 13.v,
                  width: 15.h,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets2(BuildContext context) {
    return Container(
      width: 337.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBomberJackets(
            context,
            image: ImageConstant.imgRectangle163,
            bomberJackets: "lbl_bomber_jackets".tr,
            price: "lbl_30_0_yer".tr,
            colorBlack: "lbl_color_black".tr,
            sizeL: "lbl_size_l".tr,
            qtyXOne: "lbl_qty_x1".tr,
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomIconButton(
                height: 28.v,
                width: 35.h,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgButton,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineOnSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgButtonOnsecondarycontainer,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineAmber,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgButtonAmber700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgButtonOnsecondarycontainer28x35,
                height: 28.v,
                width: 35.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ],
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets4(BuildContext context) {
    return Container(
      width: 337.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBomberJackets(
            context,
            image: ImageConstant.imgRectangle164,
            bomberJackets: "lbl_bomber_jackets".tr,
            price: "lbl_30_0_yer".tr,
            colorBlack: "lbl_color_black".tr,
            sizeL: "lbl_size_l".tr,
            qtyXOne: "lbl_qty_x1".tr,
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomIconButton(
                height: 28.v,
                width: 35.h,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgButton,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: CustomIconButton(
                  height: 28.v,
                  width: 35.h,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineOnSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgButtonOnsecondarycontainer,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgButtonAmber70028x35,
                height: 28.v,
                width: 35.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
                margin: EdgeInsets.only(left: 7.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgButtonOnsecondarycontainer28x35,
                height: 28.v,
                width: 35.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ],
          ),
          SizedBox(height: 1.v),
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
  Widget _buildInvoicePrint(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_invoice_print".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 28.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 9.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsupWhiteA700,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
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
    required String image,
    required String elHodaStore,
    required String fortyEight,
    required String ratings,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Column(
            children: [
              Text(
                elHodaStore,
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
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: CustomIconButton(
            height: 28.v,
            width: 31.h,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgButton,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: CustomIconButton(
            height: 28.v,
            width: 31.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineAmber,
            child: CustomImageView(
              imagePath: ImageConstant.imgButtonAmber700,
            ),
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
    return Row(
      children: [
        CustomImageView(
          imagePath: image,
          height: 85.adaptSize,
          width: 85.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
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
      ],
    );
  }

  /// Common widget
  Widget _buildDeliveryCost(
    BuildContext context, {
    required String deliveryCost,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            deliveryCost,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleMedium_2.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );
  }
}
