import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/nineteen_page/nineteen_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/nineteen_tab_container_bloc.dart';
import 'models/nineteen_tab_container_model.dart';

class NineteenTabContainerScreen extends StatefulWidget {
  const NineteenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NineteenTabContainerScreenState createState() =>
      NineteenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NineteenTabContainerBloc>(
      create: (context) => NineteenTabContainerBloc(NineteenTabContainerState(
        nineteenTabContainerModelObj: NineteenTabContainerModel(),
      ))
        ..add(NineteenTabContainerInitialEvent()),
      child: NineteenTabContainerScreen(),
    );
  }
}

class NineteenTabContainerScreenState extends State<NineteenTabContainerScreen>
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
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildElNorStore(context),
              SizedBox(height: 7.v),
              _buildSearch(context),
              SizedBox(height: 8.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 695.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      NineteenPage.builder(context),
                      NineteenPage.builder(context),
                      NineteenPage.builder(context),
                      NineteenPage.builder(context),
                      NineteenPage.builder(context),
                    ],
                  ),
                ),
              ),
            ],
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
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgTwitter,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 4.v,
            right: 3.h,
          ),
        ),
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            right: 21.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildElNorStore(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3059x59,
            height: 59.adaptSize,
            width: 59.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_el_nor_store".tr,
                  style: CustomTextStyles.titleMedium17,
                ),
                Text(
                  "lbl_154_items".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  width: 108.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                        "lbl_4_8".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_574_ratings".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlack900,
                        height: 7.v,
                        width: 3.h,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 83.h,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 11.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "lbl_1_2_km".tr,
                    style: CustomTextStyles.bodySmallRed600,
                  ),
                ),
                CustomIconButton(
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGrayTL19,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSupportHeart,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<NineteenTabContainerBloc,
                NineteenTabContainerState, TextEditingController?>(
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
                imagePath: ImageConstant.imgMegaphone,
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
