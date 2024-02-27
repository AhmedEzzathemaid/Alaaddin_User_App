import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/six_bloc.dart';
import 'models/navigationmenu_item_model.dart';
import 'models/productlist1_item_model.dart';
import 'models/productlist2_item_model.dart';
import 'models/productlist_item_model.dart';
import 'models/rectangle_item_model.dart';
import 'models/six_model.dart';
import 'models/storeinfo_item_model.dart';
import 'widgets/navigationmenu_item_widget.dart';
import 'widgets/productlist1_item_widget.dart';
import 'widgets/productlist2_item_widget.dart';
import 'widgets/productlist_item_widget.dart';
import 'widgets/rectangle_item_widget.dart';
import 'widgets/storeinfo_item_widget.dart';

// ignore_for_file: must_be_immutable
class SixPage extends StatelessWidget {
  const SixPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixBloc>(
      create: (context) => SixBloc(SixState(
        sixModelObj: SixModel(),
      ))
        ..add(SixInitialEvent()),
      child: SixPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child:
                        BlocSelector<SixBloc, SixState, TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_search".tr,
                          borderDecoration: SearchViewStyleHelper.fillGray,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_categories".tr,
                              style: CustomTextStyles.titleMediumSemiBold18,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgAnimationLl3sefv6Small,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildNavigationMenu(context),
                  SizedBox(height: 11.v),
                  BlocBuilder<SixBloc, SixState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 10.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: state.sliderIndex,
                          count: state
                                  .sixModelObj?.navigationmenuItemList.length ??
                              0,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 4,
                            activeDotColor:
                                theme.colorScheme.primary.withOpacity(1),
                            dotColor: appTheme.gray40002,
                            activeDotScale: 1.6666666666666667,
                            dotHeight: 6.v,
                            dotWidth: 6.h,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 12.v),
                  Divider(
                    indent: 20.h,
                    endIndent: 18.h,
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildSuggestedProducts(
                      context,
                      suggestedProducts: "lbl_stores_near_you".tr,
                      viewAll: "lbl_view_all".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildStoreInfo(context),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_certificates".tr,
                        style: CustomTextStyles.titleMediumSemiBold18,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildRectangle(context),
                  SizedBox(height: 15.v),
                  Divider(
                    indent: 20.h,
                    endIndent: 18.h,
                  ),
                  SizedBox(height: 13.v),
                  _buildNewArrival(context),
                  SizedBox(height: 16.v),
                  _buildProductList(context),
                  SizedBox(height: 12.v),
                  Divider(
                    indent: 20.h,
                    endIndent: 18.h,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildSuggestedProducts(
                      context,
                      suggestedProducts: "msg_suggested_products".tr,
                      viewAll: "lbl_view_all".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildProductList1(context),
                  SizedBox(height: 6.v),
                  _buildFlashSale(context),
                  SizedBox(height: 14.v),
                  _buildProductList2(context),
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
      height: 46.v,
      leadingWidth: 54.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgGroup1000001177,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(
          children: [
            AppbarSubtitleThree(
              text: "lbl_default_address".tr,
              margin: EdgeInsets.only(right: 36.h),
            ),
            AppbarSubtitleFour(
              text: "msg_st7_shabwa_dar".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(18.h, 11.v, 11.h, 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillLightGreenA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppbarImage(
                imagePath: ImageConstant.imgWallet31,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              AppbarSubtitleFive(
                text: "lbl_500_yer".tr,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 2.v,
                  right: 1.h,
                ),
              ),
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationIcon,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 11.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNavigationMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 20.h,
      ),
      child: BlocBuilder<SixBloc, SixState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 169.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                state.sliderIndex = index;
              },
            ),
            itemCount: state.sixModelObj?.navigationmenuItemList.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              NavigationmenuItemModel model =
                  state.sixModelObj?.navigationmenuItemList[index] ??
                      NavigationmenuItemModel();
              return NavigationmenuItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreInfo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 65.v,
        child: BlocSelector<SixBloc, SixState, SixModel?>(
          selector: (state) => state.sixModelObj,
          builder: (context, sixModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: sixModelObj?.storeinfoItemList.length ?? 0,
              itemBuilder: (context, index) {
                StoreinfoItemModel model =
                    sixModelObj?.storeinfoItemList[index] ??
                        StoreinfoItemModel();
                return StoreinfoItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangle(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 116.v,
        child: BlocSelector<SixBloc, SixState, SixModel?>(
          selector: (state) => state.sixModelObj,
          builder: (context, sixModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: sixModelObj?.rectangleItemList.length ?? 0,
              itemBuilder: (context, index) {
                RectangleItemModel model =
                    sixModelObj?.rectangleItemList[index] ??
                        RectangleItemModel();
                return RectangleItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewArrival(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_new_arrival".tr,
              style: CustomTextStyles.titleMediumSemiBold18,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAnimationLl3s75ndSmall,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(left: 3.h),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.titleSmallPrimary15_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        child: BlocSelector<SixBloc, SixState, SixModel?>(
          selector: (state) => state.sixModelObj,
          builder: (context, sixModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: sixModelObj?.productlistItemList.length ?? 0,
              itemBuilder: (context, index) {
                ProductlistItemModel model =
                    sixModelObj?.productlistItemList[index] ??
                        ProductlistItemModel();
                return ProductlistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 388.v,
        child: BlocSelector<SixBloc, SixState, SixModel?>(
          selector: (state) => state.sixModelObj,
          builder: (context, sixModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 1.h,
                );
              },
              itemCount: sixModelObj?.productlist1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist1ItemModel model =
                    sixModelObj?.productlist1ItemList[index] ??
                        Productlist1ItemModel();
                return Productlist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFlashSale(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 62.v,
            width: 232.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 62.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_flash_sale".tr,
                          style: CustomTextStyles.titleMediumSemiBold18,
                        ),
                        SizedBox(height: 4.v),
                        Container(
                          width: 170.h,
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          decoration: AppDecoration.fillRed600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "lbl_2".tr,
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_d".tr,
                                  style: CustomTextStyles.labelMedium10,
                                ),
                              ),
                              Text(
                                "lbl_11".tr,
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_h".tr,
                                  style: CustomTextStyles.labelMedium10,
                                ),
                              ),
                              Text(
                                "lbl_15".tr,
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_min".tr,
                                  style: CustomTextStyles.labelMedium10,
                                ),
                              ),
                              Text(
                                "lbl_04".tr,
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_sec".tr,
                                  style: CustomTextStyles.labelMedium10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAnimationLl3sm6o4Small,
                  height: 58.v,
                  width: 66.h,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 36.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.titleSmallPrimary15_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList2(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        child: BlocSelector<SixBloc, SixState, SixModel?>(
          selector: (state) => state.sixModelObj,
          builder: (context, sixModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: sixModelObj?.productlist2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist2ItemModel model =
                    sixModelObj?.productlist2ItemList[index] ??
                        Productlist2ItemModel();
                return Productlist2ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSuggestedProducts(
    BuildContext context, {
    required String suggestedProducts,
    required String viewAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          suggestedProducts,
          style: CustomTextStyles.titleMediumSemiBold18.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            viewAll,
            style: CustomTextStyles.titleSmallPrimary15_1.copyWith(
              color: theme.colorScheme.primary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
