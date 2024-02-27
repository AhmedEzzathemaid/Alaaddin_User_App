import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/thirtysix_bloc.dart';
import 'models/productlist7_item_model.dart';
import 'models/thirtysix_model.dart';
import 'widgets/productlist7_item_widget.dart';

class ThirtysixScreen extends StatelessWidget {
  const ThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtysixBloc>(
      create: (context) => ThirtysixBloc(ThirtysixState(
        thirtysixModelObj: ThirtysixModel(),
      ))
        ..add(ThirtysixInitialEvent()),
      child: ThirtysixScreen(),
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
            padding: EdgeInsets.only(top: 6.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_365_items".tr,
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "msg_available_in_stock".tr,
                      style: CustomTextStyles.bodyMediumGray50001,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildSearch(context),
                  SizedBox(height: 11.v),
                  _buildSupportHeart2(context),
                  SizedBox(height: 19.v),
                  _buildWidget3(context),
                  SizedBox(height: 19.v),
                  _buildProductList(context),
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
        text: "lbl_long_sleeves".tr,
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
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<ThirtysixBloc, ThirtysixState,
                TextEditingController?>(
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
    );
  }

  /// Section Widget
  Widget _buildSupportHeart2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildSupportHeart(
              context,
              image: ImageConstant.imgRectangle22426190x160,
              bomberJackets: "lbl_bomber_jackets".tr,
              price: "lbl_49_0_yer".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildWidget(
              context,
              image: ImageConstant.imgRectangle22426,
              widget: "lbl_20".tr,
              bomberJackets: "lbl_bomber_jackets".tr,
              price: "lbl_30_0_yer".tr,
              price1: "lbl_49_9yer".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildWidget(
              context,
              image: ImageConstant.imgRectangle224261,
              widget: "lbl_20".tr,
              bomberJackets: "lbl_bomber_jackets".tr,
              price: "lbl_30_0_yer".tr,
              price1: "lbl_49_9yer".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildSupportHeart(
              context,
              image: ImageConstant.imgRectangle224262,
              bomberJackets: "lbl_bomber_jackets".tr,
              price: "lbl_49_0_yer".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return SizedBox(
      height: 239.v,
      child: BlocSelector<ThirtysixBloc, ThirtysixState, ThirtysixModel?>(
        selector: (state) => state.thirtysixModelObj,
        builder: (context, thirtysixModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 2.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 17.h,
              );
            },
            itemCount: thirtysixModelObj?.productlist7ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist7ItemModel model =
                  thirtysixModelObj?.productlist7ItemList[index] ??
                      Productlist7ItemModel();
              return Productlist7ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String image,
    required String widget,
    required String bomberJackets,
    required String price,
    required String price1,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              height: 190.v,
              width: 160.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: image,
                    height: 190.v,
                    width: 160.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 145.h,
                      margin: EdgeInsets.fromLTRB(10.h, 5.v, 5.h, 155.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 44.h,
                            margin: EdgeInsets.symmetric(vertical: 5.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 11.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.outlineWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Text(
                              widget,
                              style: theme.textTheme.labelMedium!.copyWith(
                                color: appTheme.whiteA700,
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSupportHeart,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              bomberJackets,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            SizedBox(height: 1.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  price,
                  style: CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
                    color: appTheme.red600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    price1,
                    style: CustomTextStyles.titleMediumGray60017.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: appTheme.gray600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSupportHeart(
    BuildContext context, {
    required String image,
    required String bomberJackets,
    required String price,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              height: 190.v,
              width: 160.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: image,
                    height: 190.v,
                    width: 160.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      right: 5.h,
                    ),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillWhiteA,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSupportHeart,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              bomberJackets,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            SizedBox(height: 1.v),
            Text(
              price,
              style: CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
                color: appTheme.red600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
