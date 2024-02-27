import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_pin_code_text_field.dart';
import 'bloc/fortynine_bloc.dart';
import 'models/fortynine_model.dart';

class FortynineScreen extends StatelessWidget {
  const FortynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortynineBloc>(
      create: (context) => FortynineBloc(FortynineState(
        fortynineModelObj: FortynineModel(),
      ))
        ..add(FortynineInitialEvent()),
      child: FortynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2196,
                    height: 321.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 61.v),
                  ),
                  _buildArrowDown(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 482.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle3040x40,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              4.h,
                            ),
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 20.h),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 70.h,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_154_items".tr,
                                style: CustomTextStyles.bodyMedium13,
                              ),
                            ),
                          ),
                          CustomOutlinedButton(
                            width: 95.h,
                            text: "lbl_view_store".tr,
                            margin: EdgeInsets.only(
                              right: 27.h,
                              bottom: 4.v,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTwentySeven(context),
                                SizedBox(height: 11.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                    "lbl_bomber_jackets".tr,
                                    style: CustomTextStyles.titleLargeBold,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                _buildPrice(context),
                                SizedBox(height: 4.v),
                                _buildLoremipsumisplacehol(context),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                    "lbl_choose_color2".tr,
                                    style: CustomTextStyles.titleMedium_2,
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                Container(
                                  height: 32.v,
                                  width: 197.h,
                                  margin: EdgeInsets.only(left: 20.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      BlocSelector<
                                          FortynineBloc,
                                          FortynineState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.otpController,
                                        builder: (context, otpController) {
                                          return CustomPinCodeTextField(
                                            context: context,
                                            controller: otpController,
                                            onChanged: (value) {
                                              otpController?.text = value;
                                            },
                                          );
                                        },
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVector6662,
                                        height: 10.v,
                                        width: 11.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 52.h),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                    "lbl_choose_size2".tr,
                                    style: CustomTextStyles.titleMedium_2,
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.h,
                                    right: 112.h,
                                  ),
                                  child: BlocSelector<FortynineBloc,
                                      FortynineState, TextEditingController?>(
                                    selector: (state) => state.otpController,
                                    builder: (context, otpController) {
                                      return CustomPinCodeTextField(
                                        context: context,
                                        controller: otpController,
                                        onChanged: (value) {
                                          otpController?.text = value;
                                        },
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Divider(
                                    indent: 20.h,
                                    endIndent: 27.h,
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 69.h),
                                  child: Text(
                                    "lbl_el_nor_store".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 91.v,
                      ),
                      decoration: AppDecoration.fillBlack,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 508.v,
                            width: 347.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle2196508x347,
                                  height: 508.v,
                                  width: 347.h,
                                  alignment: Alignment.center,
                                ),
                                CustomIconButton(
                                  height: 73.adaptSize,
                                  width: 73.adaptSize,
                                  padding: EdgeInsets.all(22.h),
                                  alignment: Alignment.center,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgOverflowMenu,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 23.v),
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
                          SizedBox(height: 45.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(19.h, 1.v, 19.h, 722.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillGrayTL19,
                child: CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGrayTL19,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSupportHeart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 162.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.gradientBlackToBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 40.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 10.v,
            width: 50.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
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
              margin: EdgeInsets.symmetric(vertical: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 1.v,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildLoremipsumisplacehol(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
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
                  trimCollapsedText: "lbl_read_more2".tr,
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
      ),
    );
  }
}
