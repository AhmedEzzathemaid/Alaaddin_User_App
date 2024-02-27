import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/onehundredsixtyseven_tab_container_page.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/onehundredtwentysix_page.dart';
import 'package:abdelhamed_s_application9/presentation/six_page/six_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixty_page/sixty_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyone_page/sixtyone_page.dart';
import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/sixtytwo_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_bottom_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/sixtyone_tab_container_bloc.dart';
import 'models/sixtyone_tab_container_model.dart';

class SixtyoneTabContainerScreen extends StatefulWidget {
  const SixtyoneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SixtyoneTabContainerScreenState createState() =>
      SixtyoneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SixtyoneTabContainerBloc>(
      create: (context) => SixtyoneTabContainerBloc(SixtyoneTabContainerState(
        sixtyoneTabContainerModelObj: SixtyoneTabContainerModel(),
      ))
        ..add(SixtyoneTabContainerInitialEvent()),
      child: SixtyoneTabContainerScreen(),
    );
  }
}

class SixtyoneTabContainerScreenState extends State<SixtyoneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SixtyoneTabContainerBloc, SixtyoneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 582.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        SixtyonePage.builder(context),
                        SixtyonePage.builder(context),
                        SixtyonePage.builder(context),
                      ],
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
        text: "lbl_my_favourite".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationIcon,
          margin: EdgeInsets.fromLTRB(18.h, 11.v, 18.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 35.v,
      width: 313.h,
      margin: EdgeInsets.only(left: 20.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: CustomElevatedButton(
              height: 35.v,
              width: 88.h,
              text: "lbl_products".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL7,
              buttonTextStyle: CustomTextStyles.bodyLargeGray600,
            ),
          ),
          Tab(
            child: CustomElevatedButton(
              height: 35.v,
              width: 74.h,
              text: "lbl_stores".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL7,
              buttonTextStyle: CustomTextStyles.bodyLargeGray600,
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkCircle01,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_delivery_points".tr,
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
