import 'package:flutter/material.dart';
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
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/onehundredsixtysix_bloc.dart';
import 'models/onehundredsixtysix_model.dart';

class OnehundredsixtysixScreen extends StatelessWidget {
  OnehundredsixtysixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtysixBloc>(
      create: (context) => OnehundredsixtysixBloc(OnehundredsixtysixState(
        onehundredsixtysixModelObj: OnehundredsixtysixModel(),
      ))
        ..add(OnehundredsixtysixInitialEvent()),
      child: OnehundredsixtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              BlocSelector<OnehundredsixtysixBloc, OnehundredsixtysixState,
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
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1000001108,
                height: 185.v,
                width: 256.h,
              ),
              SizedBox(height: 14.v),
              Text(
                "lbl_lost_connection".tr,
                style: CustomTextStyles.titleMedium19,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 240.h,
                margin: EdgeInsets.symmetric(horizontal: 47.h),
                child: Text(
                  "msg_whoops_no_internet".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.39,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              CustomOutlinedButton(
                width: 108.h,
                text: "lbl_try_again".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 7.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPajamasretry,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ),
              ),
              SizedBox(height: 95.v),
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
