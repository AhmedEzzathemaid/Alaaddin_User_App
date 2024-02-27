import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/onehundredsixtyseven_tab_container_page.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/onehundredtwentysix_page.dart';
import 'package:abdelhamed_s_application9/presentation/six_page/six_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixty_page/sixty_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/sixtytwo_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_bottom_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/sixtyseven_bloc.dart';
import 'models/sixtyseven_model.dart';

class SixtysevenScreen extends StatelessWidget {
  SixtysevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtysevenBloc>(
      create: (context) => SixtysevenBloc(SixtysevenState(
        sixtysevenModelObj: SixtysevenModel(),
      ))
        ..add(SixtysevenInitialEvent()),
      child: SixtysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SixtysevenBloc, SixtysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 16.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 11.h),
                        child: Column(
                          children: [
                            _buildAddress(context),
                            SizedBox(height: 13.v),
                            Divider(
                              color: appTheme.gray20004,
                              indent: 9.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 8.v),
                            _buildSpacer(context),
                            SizedBox(height: 9.v),
                            Divider(
                              indent: 9.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 8.v),
                            _buildViewStore1(context),
                            SizedBox(height: 10.v),
                            Divider(
                              indent: 9.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 12.v),
                            _buildCheckmarkSquareOne(context),
                            SizedBox(height: 13.v),
                            _buildCheckmarkSquareOne1(context),
                            SizedBox(height: 8.v),
                            Divider(
                              indent: 9.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 13.v),
                            _buildViewStore3(context),
                            SizedBox(height: 11.v),
                            Divider(
                              indent: 9.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 12.v),
                            _buildCheckmarkSquareOne2(context),
                            SizedBox(height: 10.v),
                            _buildCheckmarkSquareOne3(context),
                            SizedBox(height: 14.v),
                            _buildEmail(context),
                            SizedBox(height: 7.v),
                            _buildPrice(context),
                            SizedBox(height: 7.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.h),
                              child: _buildTotal(
                                context,
                                total: "lbl_item_total".tr,
                                price: "lbl_60_0_yer".tr,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            _buildDiscount(context),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.h),
                              child: _buildTotal(
                                context,
                                total: "lbl_total".tr,
                                price: "lbl_40_0_yer".tr,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            _buildCheckout(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgUserPrimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_cart".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgTwitter,
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillLightGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup302,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_address".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
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
  Widget _buildSpacer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_products_3".tr,
            style: theme.textTheme.titleLarge,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkSquare01Gray40007,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_select_all".tr,
              style: CustomTextStyles.bodyMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_clear_all".tr,
              style: theme.textTheme.bodyMedium!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStore(BuildContext context) {
    return CustomOutlinedButton(
      width: 94.h,
      text: "lbl_view_store2".tr,
      margin: EdgeInsets.only(
        top: 6.v,
        bottom: 4.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStore1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3040x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 2.v),
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
          _buildViewStore(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkSquareOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkSquare01,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(bottom: 137.v),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1685x85,
                          height: 85.adaptSize,
                          width: 85.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBomberJackets(
                              context,
                              text: "lbl_bomber_jackets".tr,
                            ),
                            SizedBox(height: 3.v),
                            Row(
                              children: [
                                Text(
                                  "lbl_30_0_yer".tr,
                                  style: CustomTextStyles.labelLargeRed600_1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_49_9_yer2".tr,
                                    style: CustomTextStyles.labelLargeGray600
                                        .copyWith(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.v),
                            SizedBox(
                              height: 40.v,
                              width: 196.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "lbl_color_black".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 196.h,
                                      margin: EdgeInsets.only(top: 16.v),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 4.v,
                                              bottom: 2.v,
                                            ),
                                            child: Text(
                                              "lbl_size_l".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                          _buildAntDesignMinu(
                                            context,
                                            text: "lbl_1".tr,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: appTheme.gray20008,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 30.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillDeepOrange,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup301,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildDeliveryPoints(
                            context,
                            deliveryPoints: "lbl_delivery_points".tr,
                            duration: "lbl_within_2_days2".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillLightGreen,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup1000001073,
                            ),
                          ),
                        ),
                        Container(
                          height: 33.v,
                          width: 72.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            top: 2.v,
                            bottom: 5.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "lbl_by_courier".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_within_4_days2".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkSquareOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkSquare01Gray40007,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 135.v,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle163,
                          height: 85.adaptSize,
                          width: 85.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBomberJackets(
                              context,
                              text: "lbl_bomber_jackets".tr,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "lbl_30_0_yer".tr,
                              style: CustomTextStyles.labelLargeRed600_1,
                            ),
                            SizedBox(height: 2.v),
                            Container(
                              width: 196.h,
                              margin: EdgeInsets.only(right: 3.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: _buildColorBlack(
                                      context,
                                      color: "lbl_color_black".tr,
                                      size: "lbl_size_l".tr,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16.v),
                                    child: CustomIconButton(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAntDesignMinu,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 19.v,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "lbl_02".tr,
                                      style: CustomTextStyles.titleSmall_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 6.h,
                                      top: 16.v,
                                    ),
                                    child: CustomIconButton(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAntDesignPlus,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: appTheme.gray20008,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 30.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillCyan,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup100000107032x32,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_product_stocked".tr,
                                style: CustomTextStyles.labelLarge12,
                              ),
                              Text(
                                "lbl_unavailable".tr,
                                style: CustomTextStyles.bodySmallRed600,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: SizedBox(
                            height: 41.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray20008,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillLightGreen,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup1000001073,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 2.v,
                            bottom: 5.v,
                          ),
                          child: _buildByCourier(
                            context,
                            byCourier: "lbl_by_courier".tr,
                            duration: "lbl_within_4_days2".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStore2(BuildContext context) {
    return CustomOutlinedButton(
      width: 94.h,
      text: "lbl_view_store2".tr,
      margin: EdgeInsets.symmetric(vertical: 4.v),
    );
  }

  /// Section Widget
  Widget _buildViewStore3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
              fortyEight: "lbl_4_8".tr,
              ratings: "lbl_574_ratings".tr,
            ),
          ),
          Spacer(),
          _buildViewStore2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkSquareOne2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkSquare01,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(bottom: 137.v),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle164,
                          height: 85.adaptSize,
                          width: 85.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBomberJackets(
                              context,
                              text: "lbl_bomber_jackets".tr,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "lbl_30_0_yer".tr,
                              style: CustomTextStyles.labelLargeRed600_1,
                            ),
                            Container(
                              width: 196.h,
                              margin: EdgeInsets.only(right: 3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5.v,
                                      bottom: 2.v,
                                    ),
                                    child: _buildColorBlack(
                                      context,
                                      color: "lbl_color_black".tr,
                                      size: "lbl_size_l".tr,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "lbl_5_left_items".tr,
                                        style:
                                            CustomTextStyles.bodyMediumRed600,
                                      ),
                                      SizedBox(height: 4.v),
                                      _buildAntDesignMinu(
                                        context,
                                        text: "lbl_1".tr,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: appTheme.gray20008,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 30.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillDeepOrange,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup301,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildDeliveryPoints(
                            context,
                            deliveryPoints: "lbl_delivery_points".tr,
                            duration: "lbl_within_3_hours".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillLightGreen,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup1000001073,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 2.v,
                            bottom: 5.v,
                          ),
                          child: _buildByCourier(
                            context,
                            byCourier: "lbl_by_courier".tr,
                            duration: "lbl_within_4_days2".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkSquareOne3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkSquare01Gray40007,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 134.v,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 7.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle163,
                          height: 85.adaptSize,
                          width: 85.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBomberJackets(
                              context,
                              text: "lbl_bomber_jackets".tr,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "lbl_30_0_yer".tr,
                              style: CustomTextStyles.labelLargeRed600_1,
                            ),
                            SizedBox(
                              width: 197.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 4.v,
                                      bottom: 2.v,
                                    ),
                                    child: _buildColorBlack(
                                      context,
                                      color: "lbl_color_black".tr,
                                      size: "lbl_size_l".tr,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "lbl_unavailable".tr,
                                        style:
                                            CustomTextStyles.bodyMediumRed600,
                                      ),
                                      SizedBox(height: 4.v),
                                      _buildAntDesignMinu(
                                        context,
                                        text: "lbl_02".tr,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: appTheme.gray20008,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 30.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillDeepOrange,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup301,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 33.v,
                                width: 93.h,
                                margin: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 5.v,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "lbl_delivery_points".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        "lbl_within_2_days2".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: SizedBox(
                                  height: 41.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.gray20008,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillLightGreen,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup1000001073,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 2.v,
                            bottom: 5.v,
                          ),
                          child: _buildByCourier(
                            context,
                            byCourier: "lbl_by_courier".tr,
                            duration: "lbl_within_4_days2".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 66.h,
      text: "lbl_apply".tr,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.labelLargeGray600,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcOutlineDiscount,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 6.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 8.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_65qwrt51".tr,
              style: CustomTextStyles.bodyMedium15,
            ),
          ),
          Spacer(),
          _buildApply(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillGreenA40001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "msg_20_0_yer_discount".tr,
            style: CustomTextStyles.bodyMediumGreenA40001,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_discount".tr,
            style: CustomTextStyles.titleMedium_2,
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
  Widget _buildCheckout(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_checkout".tr,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 7.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildBomberJackets(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      width: 199.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: CustomTextStyles.titleMedium17.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiRrTrash,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
        ],
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
  Widget _buildColorBlack(
    BuildContext context, {
    required String color,
    required String size,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          color,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          size,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAntDesignMinu(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      width: 69.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgAntDesignMinu,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              text,
              style: CustomTextStyles.titleSmall_1.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgAntDesignPlus,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryPoints(
    BuildContext context, {
    required String deliveryPoints,
    required String duration,
  }) {
    return SizedBox(
      width: 100.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deliveryPoints,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                Text(
                  duration,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: SizedBox(
              height: 41.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.gray20008,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildByCourier(
    BuildContext context, {
    required String byCourier,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          byCourier,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        Text(
          duration,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String total,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          total,
          style: CustomTextStyles.titleMediumRed600_2.copyWith(
            color: appTheme.red600,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleMediumRed600_2.copyWith(
            color: appTheme.red600,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.sixPage;
      case BottomBarEnum.Favourite:
        return AppRoutes.sixtyPage;
      case BottomBarEnum.Mycart:
        return AppRoutes.sixtytwoPage;
      case BottomBarEnum.Orders:
        return AppRoutes.onehundredsixtysevenTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.onehundredtwentysixPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.sixPage:
        return SixPage.builder(context);
      case AppRoutes.sixtyPage:
        return SixtyPage.builder(context);
      case AppRoutes.sixtytwoPage:
        return SixtytwoPage.builder(context);
      case AppRoutes.onehundredsixtysevenTabContainerPage:
        return OnehundredsixtysevenTabContainerPage.builder(context);
      case AppRoutes.onehundredtwentysixPage:
        return OnehundredtwentysixPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
