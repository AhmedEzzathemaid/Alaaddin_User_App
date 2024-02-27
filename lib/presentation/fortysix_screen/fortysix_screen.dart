import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_rating_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_switch.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import '../fortysix_screen/widgets/s20_item_widget.dart';
import 'bloc/fortysix_bloc.dart';
import 'models/eightyone_item_model.dart';
import 'models/fortysix_model.dart';
import 'models/productlist10_item_model.dart';
import 'models/rectangle6_item_model.dart';
import 'models/s20_item_model.dart';
import 'widgets/eightyone_item_widget.dart';
import 'widgets/productlist10_item_widget.dart';
import 'widgets/rectangle6_item_widget.dart';

class FortysixScreen extends StatelessWidget {
  const FortysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortysixBloc>(
      create: (context) => FortysixBloc(FortysixState(
        fortysixModelObj: FortysixModel(),
      ))
        ..add(FortysixInitialEvent()),
      child: FortysixScreen(),
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
                  _buildLoremipsumisplacehol(context),
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
                  _buildSeventyTwo(context),
                  SizedBox(height: 10.v),
                  Divider(
                    indent: 22.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 7.v),
                  _buildViewStore1(context),
                  SizedBox(height: 11.v),
                  _buildAbTestingOne(context),
                  SizedBox(height: 21.v),
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
                  SizedBox(height: 6.v),
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
          BlocBuilder<FortysixBloc, FortysixState>(
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
                itemCount:
                    state.fortysixModelObj?.eightyoneItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  EightyoneItemModel model =
                      state.fortysixModelObj?.eightyoneItemList[index] ??
                          EightyoneItemModel();
                  return EightyoneItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<FortysixBloc, FortysixState>(
              builder: (context, state) {
                return Container(
                  height: 10.v,
                  margin: EdgeInsets.only(bottom: 13.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count:
                        state.fortysixModelObj?.eightyoneItemList.length ?? 0,
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
      decoration: AppDecoration.outlineGreenA.copyWith(
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
              "msg_you_will_be_notified".tr,
              style: CustomTextStyles.titleMediumGreenA40001_1,
            ),
          ),
          BlocSelector<FortysixBloc, FortysixState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<FortysixBloc>()
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
  Widget _buildLoremipsumisplacehol(BuildContext context) {
    return SizedBox(
      height: 79.v,
      width: 330.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 330.h,
              child: ReadMoreText(
                "msg_lorem_ipsum_is_placeholder".tr,
                trimLines: 3,
                colorClickableText: theme.colorScheme.primary.withOpacity(1),
                trimMode: TrimMode.Line,
                trimCollapsedText: "lbl_read_more".tr,
                moreStyle: CustomTextStyles.bodyMedium15.copyWith(
                  height: 1.27,
                ),
                lessStyle: CustomTextStyles.bodyMedium15.copyWith(
                  height: 1.27,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgElements,
            height: 5.v,
            width: 10.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 79.h,
              bottom: 5.v,
            ),
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
        child: BlocSelector<FortysixBloc, FortysixState, FortysixModel?>(
          selector: (state) => state.fortysixModelObj,
          builder: (context, fortysixModelObj) {
            return Wrap(
              runSpacing: 7.v,
              spacing: 7.h,
              children: List<Widget>.generate(
                fortysixModelObj?.s20ItemList.length ?? 0,
                (index) {
                  S20ItemModel model =
                      fortysixModelObj?.s20ItemList[index] ?? S20ItemModel();

                  return S20ItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<FortysixBloc>().add(
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
  Widget _buildSeventyTwo(BuildContext context) {
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
          BlocSelector<FortysixBloc, FortysixState, bool?>(
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
                      .read<FortysixBloc>()
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
      child: BlocSelector<FortysixBloc, FortysixState, TextEditingController?>(
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
      child: BlocSelector<FortysixBloc, FortysixState, TextEditingController?>(
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
        child: BlocSelector<FortysixBloc, FortysixState, FortysixModel?>(
          selector: (state) => state.fortysixModelObj,
          builder: (context, fortysixModelObj) {
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
              itemCount: fortysixModelObj?.rectangle6ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Rectangle6ItemModel model =
                    fortysixModelObj?.rectangle6ItemList[index] ??
                        Rectangle6ItemModel();
                return Rectangle6ItemWidget(
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
        child: BlocSelector<FortysixBloc, FortysixState, FortysixModel?>(
          selector: (state) => state.fortysixModelObj,
          builder: (context, fortysixModelObj) {
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
              itemCount: fortysixModelObj?.productlist10ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist10ItemModel model =
                    fortysixModelObj?.productlist10ItemList[index] ??
                        Productlist10ItemModel();
                return Productlist10ItemWidget(
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
