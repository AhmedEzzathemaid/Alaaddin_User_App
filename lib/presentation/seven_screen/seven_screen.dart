import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/onehundredsixtyseven_tab_container_page.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/onehundredtwentysix_page.dart';
import 'package:abdelhamed_s_application9/presentation/six_page/six_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixty_page/sixty_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/sixtytwo_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_bottom_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/seven_bloc.dart';
import 'models/navigationmenu1_item_model.dart';
import 'models/productlist3_item_model.dart';
import 'models/productlist4_item_model.dart';
import 'models/rectangle1_item_model.dart';
import 'models/seven_model.dart';
import 'models/storeinfo1_item_model.dart';
import 'widgets/navigationmenu1_item_widget.dart';
import 'widgets/productlist3_item_widget.dart';
import 'widgets/productlist4_item_widget.dart';
import 'widgets/rectangle1_item_widget.dart';
import 'widgets/storeinfo1_item_widget.dart';

class SevenScreen extends StatelessWidget {
  SevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SevenBloc>(
      create: (context) => SevenBloc(SevenState(
        sevenModelObj: SevenModel(),
      ))
        ..add(SevenInitialEvent()),
      child: SevenScreen(),
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
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 7.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: BlocSelector<SevenBloc, SevenState,
                              TextEditingController?>(
                            selector: (state) => state.searchController,
                            builder: (context, searchController) {
                              return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr,
                                borderDecoration:
                                    SearchViewStyleHelper.fillGray,
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
                                    style:
                                        CustomTextStyles.titleMediumSemiBold18,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAnimationLl3sefv6Small,
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
                        BlocBuilder<SevenBloc, SevenState>(
                          builder: (context, state) {
                            return SizedBox(
                              height: 10.v,
                              child: AnimatedSmoothIndicator(
                                activeIndex: state.sliderIndex,
                                count: state.sevenModelObj
                                        ?.navigationmenu1ItemList.length ??
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
      child: BlocBuilder<SevenBloc, SevenState>(
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
            itemCount: state.sevenModelObj?.navigationmenu1ItemList.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              Navigationmenu1ItemModel model =
                  state.sevenModelObj?.navigationmenu1ItemList[index] ??
                      Navigationmenu1ItemModel();
              return Navigationmenu1ItemWidget(
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
        child: BlocSelector<SevenBloc, SevenState, SevenModel?>(
          selector: (state) => state.sevenModelObj,
          builder: (context, sevenModelObj) {
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
              itemCount: sevenModelObj?.storeinfo1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Storeinfo1ItemModel model =
                    sevenModelObj?.storeinfo1ItemList[index] ??
                        Storeinfo1ItemModel();
                return Storeinfo1ItemWidget(
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
        child: BlocSelector<SevenBloc, SevenState, SevenModel?>(
          selector: (state) => state.sevenModelObj,
          builder: (context, sevenModelObj) {
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
              itemCount: sevenModelObj?.rectangle1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Rectangle1ItemModel model =
                    sevenModelObj?.rectangle1ItemList[index] ??
                        Rectangle1ItemModel();
                return Rectangle1ItemWidget(
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
        child: BlocSelector<SevenBloc, SevenState, SevenModel?>(
          selector: (state) => state.sevenModelObj,
          builder: (context, sevenModelObj) {
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
              itemCount: sevenModelObj?.productlist3ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist3ItemModel model =
                    sevenModelObj?.productlist3ItemList[index] ??
                        Productlist3ItemModel();
                return Productlist3ItemWidget(
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
        child: BlocSelector<SevenBloc, SevenState, SevenModel?>(
          selector: (state) => state.sevenModelObj,
          builder: (context, sevenModelObj) {
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
              itemCount: sevenModelObj?.productlist4ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist4ItemModel model =
                    sevenModelObj?.productlist4ItemList[index] ??
                        Productlist4ItemModel();
                return Productlist4ItemWidget(
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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
