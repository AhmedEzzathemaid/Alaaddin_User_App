import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_drop_down.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_rating_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/fiftyone_bloc.dart';
import 'models/deliverypointscomponent_item_model.dart';
import 'models/fiftyone_model.dart';
import 'models/productlist12_item_model.dart';
import 'models/rectangle8_item_model.dart';
import 'models/view1_item_model.dart';
import 'widgets/deliverypointscomponent_item_widget.dart';
import 'widgets/productlist12_item_widget.dart';
import 'widgets/rectangle8_item_widget.dart';
import 'widgets/view1_item_widget.dart';

class FiftyoneScreen extends StatelessWidget {
  const FiftyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiftyoneBloc>(
      create: (context) => FiftyoneBloc(FiftyoneState(
        fiftyoneModelObj: FiftyoneModel(),
      ))
        ..add(FiftyoneInitialEvent()),
      child: FiftyoneScreen(),
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
            padding: EdgeInsets.only(top: 14.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildView(context),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "lbl_bomber_jackets".tr,
                        style: CustomTextStyles.titleLargeBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildPrice(context),
                  SizedBox(height: 4.v),
                  Container(
                    width: 330.h,
                    margin: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Text(
                      "msg_lorem_ipsum_is_placeholder".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium15.copyWith(
                        height: 1.27,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: BlocSelector<FiftyoneBloc, FiftyoneState,
                        FiftyoneModel?>(
                      selector: (state) => state.fiftyoneModelObj,
                      builder: (context, fiftyoneModelObj) {
                        return CustomDropDown(
                          width: 89.h,
                          hintText: "lbl_read_more".tr,
                          alignment: Alignment.centerLeft,
                          items: fiftyoneModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<FiftyoneBloc>()
                                .add(ChangeDropDownEvent(value: value));
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_choose_color".tr,
                        style: CustomTextStyles.titleMedium_2,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43343,
                    height: 32.v,
                    width: 197.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20.h),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "lbl_choose_size".tr,
                        style: CustomTextStyles.titleMedium_2,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Row(
                        children: [
                          Container(
                            width: 43.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineGray200041.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_s".tr,
                              style: CustomTextStyles.titleSmall_2,
                            ),
                          ),
                          Container(
                            width: 43.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineGray200041.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_m".tr,
                              style: CustomTextStyles.titleSmall_2,
                            ),
                          ),
                          Container(
                            width: 43.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 12.v,
                            ),
                            decoration: AppDecoration.outlinePrimary1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_l".tr,
                              style: CustomTextStyles.titleSmallPrimary_1,
                            ),
                          ),
                          Container(
                            width: 43.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 11.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineGray200041.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_xl".tr,
                              style:
                                  CustomTextStyles.titleSmallGray600_1.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Container(
                            width: 43.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineGray200041.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_xxl".tr,
                              style: CustomTextStyles.titleSmall_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildAddToCart1(context),
                  SizedBox(height: 13.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 9.v),
                  _buildDeliveryPointsComponent(context),
                  SizedBox(height: 15.v),
                  _buildCharacteristics(context),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: _buildZipperClosure(
                      context,
                      zipperClosure: "lbl_polyester".tr,
                      yes: "lbl_yes".tr,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: _buildZipperClosure(
                      context,
                      zipperClosure: "lbl_zipper_closure".tr,
                      yes: "lbl_yes".tr,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: _buildZipperClosure(
                      context,
                      zipperClosure: "lbl_item_type".tr,
                      yes: "msg_outerwear_coats".tr,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: _buildZipperClosure(
                      context,
                      zipperClosure: "lbl_style".tr,
                      yes: "lbl_slim_jacket".tr,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 14.v),
                  _buildRatingsreviews(context),
                  SizedBox(height: 12.v),
                  _buildFourHundredEightyFive(context),
                  SizedBox(height: 13.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "msg_khaled_ahmed_1_jan".tr,
                        style: CustomTextStyles.titleSmallGray600,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: CustomRatingBar(
                      alignment: Alignment.centerLeft,
                      initialRating: 5,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "lbl_amazing".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 293.h,
                      margin: EdgeInsets.only(
                        left: 22.h,
                        right: 59.h,
                      ),
                      child: Text(
                        "msg_an_amazing_fit".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.29,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildRectangle(context),
                  SizedBox(height: 12.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 10.v),
                  _buildViewAllReviews(context),
                  SizedBox(height: 13.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 11.v),
                  _buildRelatedProducts(context),
                  SizedBox(height: 9.v),
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
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgTwitter,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 4.v,
            right: 4.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgSupportHeart,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 4.v,
            right: 22.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 321.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<FiftyoneBloc, FiftyoneState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 321.v,
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
                itemCount: state.fiftyoneModelObj?.view1ItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  View1ItemModel model =
                      state.fiftyoneModelObj?.view1ItemList[index] ??
                          View1ItemModel();
                  return View1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<FiftyoneBloc, FiftyoneState>(
              builder: (context, state) {
                return Container(
                  height: 10.v,
                  margin: EdgeInsets.only(bottom: 13.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.fiftyoneModelObj?.view1ItemList.length ?? 0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary.withOpacity(1),
                      dotColor: appTheme.gray40002,
                      activeDotScale: 1.6666666666666667,
                      dotHeight: 6.v,
                      dotWidth: 6.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_30_0_yer".tr,
            style: CustomTextStyles.titleLargeRed600,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_49_9_yer2".tr,
              style: CustomTextStyles.titleMediumGray60017.copyWith(
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 44.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_20".tr,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
      width: 179.h,
      text: "lbl_add_to_cart".tr,
      margin: EdgeInsets.only(left: 25.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 11.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgBagWhiteA700,
          height: 19.v,
          width: 17.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.h),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAntDesignMinu,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 13.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAntDesignPlus,
              ),
            ),
          ),
          _buildAddToCart(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryPointsComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      child: BlocSelector<FiftyoneBloc, FiftyoneState, FiftyoneModel?>(
        selector: (state) => state.fiftyoneModelObj,
        builder: (context, fiftyoneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0.v),
                child: SizedBox(
                  width: 328.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray200,
                  ),
                ),
              );
            },
            itemCount:
                fiftyoneModelObj?.deliverypointscomponentItemList.length ?? 0,
            itemBuilder: (context, index) {
              DeliverypointscomponentItemModel model =
                  fiftyoneModelObj?.deliverypointscomponentItemList[index] ??
                      DeliverypointscomponentItemModel();
              return DeliverypointscomponentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCharacteristics(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      child: BlocSelector<FiftyoneBloc, FiftyoneState, TextEditingController?>(
        selector: (state) => state.characteristicsController,
        builder: (context, characteristicsController) {
          return CustomTextFormField(
            controller: characteristicsController,
            hintText: "lbl_characteristics".tr,
            hintStyle: CustomTextStyles.titleSmall15,
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingsreviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      child: BlocSelector<FiftyoneBloc, FiftyoneState, TextEditingController?>(
        selector: (state) => state.ratingsreviewsController,
        builder: (context, ratingsreviewsController) {
          return CustomTextFormField(
            controller: ratingsreviewsController,
            hintText: "msg_ratings_reviews2".tr,
            hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFourHundredEightyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_4_8".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  TextSpan(
                    text: "lbl_5".tr,
                    style: CustomTextStyles.headlineMediumff7a7f8a,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_overall_rating2".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.v),
                Text(
                  "lbl_574_ratings2".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgAnimationLl3vyvqoSmall,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 55.v,
        child: BlocSelector<FiftyoneBloc, FiftyoneState, FiftyoneModel?>(
          selector: (state) => state.fiftyoneModelObj,
          builder: (context, fiftyoneModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(
                left: 22.h,
                right: 233.h,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: fiftyoneModelObj?.rectangle8ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Rectangle8ItemModel model =
                    fiftyoneModelObj?.rectangle8ItemList[index] ??
                        Rectangle8ItemModel();
                return Rectangle8ItemWidget(
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
  Widget _buildViewAllReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              "msg_view_all_76_reviews".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRelatedProducts(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_related_products".tr,
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
  Widget _buildProductList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        child: BlocSelector<FiftyoneBloc, FiftyoneState, FiftyoneModel?>(
          selector: (state) => state.fiftyoneModelObj,
          builder: (context, fiftyoneModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 22.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: fiftyoneModelObj?.productlist12ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist12ItemModel model =
                    fiftyoneModelObj?.productlist12ItemList[index] ??
                        Productlist12ItemModel();
                return Productlist12ItemWidget(
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
  Widget _buildZipperClosure(
    BuildContext context, {
    required String zipperClosure,
    required String yes,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            zipperClosure,
            style: CustomTextStyles.titleSmallGray600_2.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Text(
          yes,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );
  }
}
