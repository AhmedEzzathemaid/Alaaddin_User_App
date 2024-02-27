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
import 'bloc/eight_bloc.dart';
import 'models/dynamicmenu_item_model.dart';
import 'models/eight_model.dart';
import 'models/rectangle2_item_model.dart';
import 'models/rectangle3_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/dynamicmenu_item_widget.dart';
import 'widgets/rectangle2_item_widget.dart';
import 'widgets/rectangle3_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

class EightScreen extends StatelessWidget {
  EightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<EightBloc>(
      create: (context) => EightBloc(EightState(
        eightModelObj: EightModel(),
      ))
        ..add(EightInitialEvent()),
      child: EightScreen(),
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
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: BlocSelector<EightBloc, EightState,
                            TextEditingController?>(
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
                      _buildDynamicMenu(context),
                      SizedBox(height: 11.v),
                      BlocBuilder<EightBloc, EightState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 10.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: state.sliderIndex,
                              count: state.eightModelObj?.dynamicmenuItemList
                                      .length ??
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
                      SizedBox(height: 9.v),
                      Divider(
                        indent: 20.h,
                        endIndent: 18.h,
                      ),
                      SizedBox(height: 13.v),
                      _buildStoresNearYou(context),
                      SizedBox(height: 10.v),
                      _buildUserProfile(context),
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
                      _buildBomberJackets(context),
                      SizedBox(height: 41.v),
                      Divider(
                        indent: 20.h,
                        endIndent: 18.h,
                      ),
                    ],
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
              text: "lbl_address".tr,
            ),
            AppbarSubtitleFour(
              text: "lbl_home".tr,
              margin: EdgeInsets.only(right: 16.h),
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
  Widget _buildDynamicMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 20.h,
      ),
      child: BlocBuilder<EightBloc, EightState>(
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
            itemCount: state.eightModelObj?.dynamicmenuItemList.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              DynamicmenuItemModel model =
                  state.eightModelObj?.dynamicmenuItemList[index] ??
                      DynamicmenuItemModel();
              return DynamicmenuItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStoresNearYou(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_stores_near_you".tr,
            style: CustomTextStyles.titleMediumSemiBold18,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
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
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 65.v,
        child: BlocSelector<EightBloc, EightState, EightModel?>(
          selector: (state) => state.eightModelObj,
          builder: (context, eightModelObj) {
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
              itemCount: eightModelObj?.userprofileItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofileItemModel model =
                    eightModelObj?.userprofileItemList[index] ??
                        UserprofileItemModel();
                return UserprofileItemWidget(
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
        child: BlocSelector<EightBloc, EightState, EightModel?>(
          selector: (state) => state.eightModelObj,
          builder: (context, eightModelObj) {
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
              itemCount: eightModelObj?.rectangle2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Rectangle2ItemModel model =
                    eightModelObj?.rectangle2ItemList[index] ??
                        Rectangle2ItemModel();
                return Rectangle2ItemWidget(
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
  Widget _buildBomberJackets(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        width: 355.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  bottom: 24.v,
                ),
                child: Text(
                  "lbl_bomber_jackets".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_30_0_yer".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumRed600SemiBold17,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_49_9yer".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumGray60017.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 192.h,
                  right: 49.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_bomber_jackets".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      "lbl_49_0_yer".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumRed600SemiBold17,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 241.v,
                child: BlocSelector<EightBloc, EightState, EightModel?>(
                  selector: (state) => state.eightModelObj,
                  builder: (context, eightModelObj) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 1.h,
                        );
                      },
                      itemCount: eightModelObj?.rectangle3ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Rectangle3ItemModel model =
                            eightModelObj?.rectangle3ItemList[index] ??
                                Rectangle3ItemModel();
                        return Rectangle3ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
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
