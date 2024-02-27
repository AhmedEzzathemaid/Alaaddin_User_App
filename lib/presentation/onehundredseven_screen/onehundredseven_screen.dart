import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredseven_bloc.dart';
import 'models/onehundredseven_model.dart';
import 'models/productcard10_item_model.dart';
import 'widgets/productcard10_item_widget.dart';

class OnehundredsevenScreen extends StatelessWidget {
  const OnehundredsevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsevenBloc>(
      create: (context) => OnehundredsevenBloc(OnehundredsevenState(
        onehundredsevenModelObj: OnehundredsevenModel(),
      ))
        ..add(OnehundredsevenInitialEvent()),
      child: OnehundredsevenScreen(),
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
                        SizedBox(height: 2.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_products_3".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Container(
                          width: 192.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            right: 145.h,
                          ),
                          decoration: AppDecoration.fillTeal50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCartGreenA40001,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "msg_on_the_way_to_deliver".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGreenA4000113,
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
                                  imagePath: ImageConstant.imgGroup1000001076,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 5.v,
                                  bottom: 4.v,
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
                        SizedBox(height: 7.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 9.v),
                        _buildPlay(context),
                        SizedBox(height: 11.v),
                        Divider(
                          color: appTheme.gray20003,
                          indent: 2.h,
                        ),
                        SizedBox(height: 10.v),
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
                        SizedBox(height: 13.v),
                        _buildProductCard(context),
                        SizedBox(height: 9.v),
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
                        SizedBox(height: 5.v),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 19.h,
            right: 19.h,
            bottom: 30.v,
          ),
          child: _buildDeliveryCost(
            context,
            deliveryCost: "lbl_total".tr,
            price: "lbl_120_0_yer".tr,
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
        children: [
          Text(
            "lbl_52156564320".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGreenA,
              child: CustomImageView(
                imagePath: ImageConstant.imgCall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 7.v,
              bottom: 7.v,
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
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredsevenBloc, OnehundredsevenState,
          OnehundredsevenModel?>(
        selector: (state) => state.onehundredsevenModelObj,
        builder: (context, onehundredsevenModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4.5.v),
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
            itemCount:
                onehundredsevenModelObj?.productcard10ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcard10ItemModel model =
                  onehundredsevenModelObj?.productcard10ItemList[index] ??
                      Productcard10ItemModel();
              return Productcard10ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 218.h,
            margin: EdgeInsets.only(bottom: 1.v),
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
                ),
                Column(
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
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserRed600,
            height: 19.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 67.v,
              right: 4.h,
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
          margin: EdgeInsets.only(top: 4.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            bottom: 4.v,
          ),
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
