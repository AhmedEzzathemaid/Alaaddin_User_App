import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirty_page/thirty_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/thirty_tab_container_bloc.dart';
import 'models/thirty_tab_container_model.dart';

class ThirtyTabContainerScreen extends StatefulWidget {
  const ThirtyTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ThirtyTabContainerScreenState createState() =>
      ThirtyTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtyTabContainerBloc>(
      create: (context) => ThirtyTabContainerBloc(ThirtyTabContainerState(
        thirtyTabContainerModelObj: ThirtyTabContainerModel(),
      ))
        ..add(ThirtyTabContainerInitialEvent()),
      child: ThirtyTabContainerScreen(),
    );
  }
}

class ThirtyTabContainerScreenState extends State<ThirtyTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
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
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_365_items".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_available_in_stock".tr,
                    style: CustomTextStyles.bodyMediumGray50001,
                  ),
                ),
                SizedBox(height: 6.v),
                _buildSearch(context),
                SizedBox(height: 10.v),
                _buildTabview(context),
                SizedBox(
                  height: 802.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ThirtyPage.builder(context),
                      ThirtyPage.builder(context),
                      ThirtyPage.builder(context),
                      ThirtyPage.builder(context),
                      ThirtyPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
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
        text: "msg_suggested_products2".tr,
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
  Widget _buildSearch(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BlocSelector<ThirtyTabContainerBloc,
                  ThirtyTabContainerState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.v),
                    borderDecoration: SearchViewStyleHelper.fillGray,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                padding: EdgeInsets.all(11.h),
                decoration: IconButtonStyleHelper.fillGrayTL10,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFilter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 35.v,
      width: 355.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary.withOpacity(1),
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 6.v,
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
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_men".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 81.h,
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                "lbl_women".tr,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 81.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                "lbl_mobile".tr,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 87.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                "lbl_furniture".tr,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 87.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                "lbl_furniture".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
