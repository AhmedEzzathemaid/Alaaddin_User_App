import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/onehundredsixtyseven_tab_container_page.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/onehundredtwentysix_page.dart';
import 'package:abdelhamed_s_application9/presentation/six_page/six_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixty_page/sixty_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/sixtytwo_page.dart';
import 'package:abdelhamed_s_application9/widgets/custom_bottom_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/nine_bloc.dart';
import 'models/icphysician_item_model.dart';
import 'models/nine_model.dart';
import 'models/rectangle4_item_model.dart';
import 'models/storeinfo2_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'widgets/icphysician_item_widget.dart';
import 'widgets/rectangle4_item_widget.dart';
import 'widgets/storeinfo2_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class NineScreen extends StatelessWidget {
  NineScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NineBloc>(
      create: (context) => NineBloc(NineState(
        nineModelObj: NineModel(),
      ))
        ..add(NineInitialEvent()),
      child: NineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildMen(context),
                SizedBox(height: 8.v),
                Divider(
                  indent: 20.h,
                  endIndent: 18.h,
                ),
                SizedBox(height: 13.v),
                _buildStoresNearYou(context),
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
                SizedBox(height: 15.v),
                _buildPrice(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMen(BuildContext context) {
    return SizedBox(
      height: 143.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                right: 21.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: _buildIcDental(
                          context,
                          image: ImageConstant.imgMaskGroup1x33,
                          women: "lbl_men".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.h),
                        child: _buildIcDental(
                          context,
                          image: ImageConstant.imgMaskGroup,
                          women: "lbl_women".tr,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Column(
                            children: [
                              Container(
                                height: 8.v,
                                width: 56.h,
                                padding: EdgeInsets.symmetric(horizontal: 15.h),
                                decoration:
                                    AppDecoration.fillDeepOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup1x26,
                                  height: 1.v,
                                  width: 26.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "lbl_decore".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer13,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Column(
                            children: [
                              Container(
                                height: 8.v,
                                width: 56.h,
                                padding: EdgeInsets.symmetric(horizontal: 13.h),
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup1x29,
                                  height: 1.v,
                                  width: 29.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "lbl_furniture".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer13,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.greenA700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                              decoration: AppDecoration.fillGreenA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 19.adaptSize,
                                      width: 19.adaptSize,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA400,
                                        borderRadius: BorderRadius.circular(
                                          9.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbsUpGreenA700,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup31x31,
                                    height: 31.adaptSize,
                                    width: 31.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_toys".tr,
                            style: CustomTextStyles
                                .bodyMediumOnSecondaryContainer13,
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 80.v,
                          child: BlocSelector<NineBloc, NineState, NineModel?>(
                            selector: (state) => state.nineModelObj,
                            builder: (context, nineModelObj) {
                              return ListView.separated(
                                padding: EdgeInsets.only(left: 34.h),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    width: 34.h,
                                  );
                                },
                                itemCount:
                                    nineModelObj?.icphysicianItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  IcphysicianItemModel model = nineModelObj
                                          ?.icphysicianItemList[index] ??
                                      IcphysicianItemModel();
                                  return IcphysicianItemWidget(
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
                  SizedBox(height: 11.v),
                  SizedBox(
                    height: 10.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 5,
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
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.outlineBlack,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 9.v),
                  BlocSelector<NineBloc, NineState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        borderDecoration: SearchViewStyleHelper.fillGray,
                      );
                    },
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
            padding: EdgeInsets.only(bottom: 3.v),
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
  Widget _buildStoreInfo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 65.v,
        child: BlocSelector<NineBloc, NineState, NineModel?>(
          selector: (state) => state.nineModelObj,
          builder: (context, nineModelObj) {
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
              itemCount: nineModelObj?.storeinfo2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Storeinfo2ItemModel model =
                    nineModelObj?.storeinfo2ItemList[index] ??
                        Storeinfo2ItemModel();
                return Storeinfo2ItemWidget(
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
        child: BlocSelector<NineBloc, NineState, NineModel?>(
          selector: (state) => state.nineModelObj,
          builder: (context, nineModelObj) {
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
              itemCount: nineModelObj?.rectangle4ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Rectangle4ItemModel model =
                    nineModelObj?.rectangle4ItemList[index] ??
                        Rectangle4ItemModel();
                return Rectangle4ItemWidget(
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
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
            margin: EdgeInsets.only(left: 2.h),
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
  Widget _buildPrice(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        width: 355.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.h, 217.v, 71.h, 1.v),
                child: Row(
                  children: [
                    Text(
                      "lbl_30_0_yer".tr,
                      style: CustomTextStyles.titleMediumRed600SemiBold17,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_49_9yer".tr,
                        style: CustomTextStyles.titleMediumGray60017.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "lbl_49_0_yer".tr,
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
                child: BlocSelector<NineBloc, NineState, NineModel?>(
                  selector: (state) => state.nineModelObj,
                  builder: (context, nineModelObj) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 9.h,
                        );
                      },
                      itemCount:
                          nineModelObj?.viewhierarchyItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ViewhierarchyItemModel model =
                            nineModelObj?.viewhierarchyItemList[index] ??
                                ViewhierarchyItemModel();
                        return ViewhierarchyItemWidget(
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

  /// Common widget
  Widget _buildIcDental(
    BuildContext context, {
    required String image,
    required String women,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: 8.v,
              width: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              decoration: AppDecoration.fillDeepPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: image,
                height: 1.v,
                width: 33.h,
                alignment: Alignment.topCenter,
              ),
            ),
            SizedBox(height: 6.v),
            Text(
              women,
              style: CustomTextStyles.bodyMediumOnSecondaryContainer13.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ],
        ),
      ),
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
