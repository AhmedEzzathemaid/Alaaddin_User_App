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
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import '../fortyfour_screen/widgets/s16_item_widget.dart';
import 'bloc/fortyfour_bloc.dart';
import 'models/fortyfour_model.dart';
import 'models/productlist8_item_model.dart';
import 'models/s16_item_model.dart';
import 'models/seventy_item_model.dart';
import 'widgets/productlist8_item_widget.dart';
import 'widgets/seventy_item_widget.dart';

class FortyfourScreen extends StatelessWidget {
  const FortyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortyfourBloc>(
      create: (context) => FortyfourBloc(FortyfourState(
        fortyfourModelObj: FortyfourModel(),
      ))
        ..add(FortyfourInitialEvent()),
      child: FortyfourScreen(),
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
                  _buildClose(context),
                  SizedBox(height: 9.v),
                  _buildUser(context),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_bomber_jackets".tr,
                        style: CustomTextStyles.titleLargeBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_30_0_yer".tr,
                        style: CustomTextStyles.titleLargeRed600,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    width: 330.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 24.h,
                    ),
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
                    padding: EdgeInsets.only(left: 20.h),
                    child: BlocSelector<FortyfourBloc, FortyfourState,
                        FortyfourModel?>(
                      selector: (state) => state.fortyfourModelObj,
                      builder: (context, fortyfourModelObj) {
                        return CustomDropDown(
                          width: 89.h,
                          hintText: "lbl_read_more".tr,
                          alignment: Alignment.centerLeft,
                          items: fortyfourModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<FortyfourBloc>()
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
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_choose_size".tr,
                        style: CustomTextStyles.titleMedium_2,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildS(context),
                  SizedBox(height: 14.v),
                  _buildSixtyTwo(context),
                  SizedBox(height: 10.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 7.v),
                  _buildViewStore1(context),
                  SizedBox(height: 11.v),
                  _buildAbTestingOne(context),
                  SizedBox(height: 9.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 11.v),
                  _buildCharacteristics(context),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: _buildZipperClosure(
                      context,
                      zipperText: "lbl_polyester".tr,
                      yesText: "lbl_yes".tr,
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
                      zipperText: "lbl_zipper_closure".tr,
                      yesText: "lbl_yes".tr,
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
                      zipperText: "lbl_item_type".tr,
                      yesText: "msg_outerwear_coats".tr,
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
                      zipperText: "lbl_style".tr,
                      yesText: "lbl_slim_jacket".tr,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 14.v),
                  _buildRatingsreviews(context),
                  SizedBox(height: 12.v),
                  _buildFive(context),
                  SizedBox(height: 13.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 11.v),
                  _buildRelatedProducts(context),
                  SizedBox(height: 8.v),
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
  Widget _buildClose(BuildContext context) {
    return SizedBox(
      height: 321.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<FortyfourBloc, FortyfourState>(
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
                itemCount: state.fortyfourModelObj?.seventyItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  SeventyItemModel model =
                      state.fortyfourModelObj?.seventyItemList[index] ??
                          SeventyItemModel();
                  return SeventyItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<FortyfourBloc, FortyfourState>(
              builder: (context, state) {
                return Container(
                  height: 10.v,
                  margin: EdgeInsets.only(bottom: 13.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.fortyfourModelObj?.seventyItemList.length ?? 0,
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
  Widget _buildUser(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineGray30004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 17.v,
            width: 14.h,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 4.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Text(
              "msg_notify_me_when_it".tr,
              style: CustomTextStyles.titleMediumGray600_2,
            ),
          ),
          Spacer(),
          BlocSelector<FortyfourBloc, FortyfourState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.symmetric(vertical: 2.v),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<FortyfourBloc>()
                      .add(ChangeSwitchEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildS(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: BlocSelector<FortyfourBloc, FortyfourState, FortyfourModel?>(
          selector: (state) => state.fortyfourModelObj,
          builder: (context, fortyfourModelObj) {
            return Wrap(
              runSpacing: 7.v,
              spacing: 7.h,
              children: List<Widget>.generate(
                fortyfourModelObj?.s16ItemList.length ?? 0,
                (index) {
                  S16ItemModel model =
                      fortyfourModelObj?.s16ItemList[index] ?? S16ItemModel();

                  return S16ItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<FortyfourBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
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
          imagePath: ImageConstant.imgBagGray600,
          height: 19.v,
          width: 17.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray600Bold,
    );
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
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
  Widget _buildViewStore(BuildContext context) {
    return CustomOutlinedButton(
      width: 95.h,
      text: "lbl_view_store".tr,
      margin: EdgeInsets.only(
        top: 11.v,
        bottom: 8.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStore1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3048x48,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_el_nor_store".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_154_items".tr,
                  style: CustomTextStyles.bodyMedium13,
                ),
                SizedBox(
                  width: 94.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 2.v,
                        ),
                      ),
                      Text(
                        "lbl_4_8".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_574_ratings".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          _buildViewStore(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAbTestingOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 22.h,
        right: 25.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAbTesting1,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
            ),
            child: Text(
              "msg_add_to_compare_list".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          BlocSelector<FortyfourBloc, FortyfourState, bool?>(
            selector: (state) => state.isSelectedSwitch1,
            builder: (context, isSelectedSwitch1) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 3.v,
                  right: 1.h,
                  bottom: 3.v,
                ),
                value: isSelectedSwitch1,
                onChange: (value) {
                  context
                      .read<FortyfourBloc>()
                      .add(ChangeSwitch1Event(value: value));
                },
              );
            },
          ),
        ],
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
      child:
          BlocSelector<FortyfourBloc, FortyfourState, TextEditingController?>(
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
      child:
          BlocSelector<FortyfourBloc, FortyfourState, TextEditingController?>(
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
  Widget _buildFive(BuildContext context) {
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
                    text: "lbl_02".tr,
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
                  "lbl_0_ratings".tr,
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
            padding: EdgeInsets.only(bottom: 2.v),
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
        child: BlocSelector<FortyfourBloc, FortyfourState, FortyfourModel?>(
          selector: (state) => state.fortyfourModelObj,
          builder: (context, fortyfourModelObj) {
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
              itemCount: fortyfourModelObj?.productlist8ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist8ItemModel model =
                    fortyfourModelObj?.productlist8ItemList[index] ??
                        Productlist8ItemModel();
                return Productlist8ItemWidget(
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
    required String zipperText,
    required String yesText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            zipperText,
            style: CustomTextStyles.titleSmallGray600_2.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Text(
          yesText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );
  }
}
