import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/onehundredsixtyeight_bloc.dart';
import 'models/onehundredsixtyeight_model.dart';

class OnehundredsixtyeightScreen extends StatelessWidget {
  const OnehundredsixtyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtyeightBloc>(
      create: (context) => OnehundredsixtyeightBloc(OnehundredsixtyeightState(
        onehundredsixtyeightModelObj: OnehundredsixtyeightModel(),
      ))
        ..add(OnehundredsixtyeightInitialEvent()),
      child: OnehundredsixtyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredsixtyeightBloc, OnehundredsixtyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 18.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle30,
                        height: 49.adaptSize,
                        width: 49.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 2.v,
                          bottom: 6.v,
                        ),
                        child: _buildFrame(
                          context,
                          overallRating: "lbl_el_nor_store".tr,
                          ratingsCounter: "lbl_154_items".tr,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
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
                        padding: EdgeInsets.only(left: 8.h),
                        child: _buildFrame(
                          context,
                          overallRating: "lbl_overall_rating".tr,
                          ratingsCounter: "lbl_0_ratings".tr,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11.v),
                  Divider(
                    indent: 3.h,
                    endIndent: 4.h,
                  ),
                  SizedBox(height: 95.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1000001271,
                    height: 113.v,
                    width: 106.h,
                    margin: EdgeInsets.only(left: 104.h),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_no_rating_yet".tr,
                      style: CustomTextStyles.titleMedium19,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_there_are_no_data".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomOutlinedButton(
                    width: 150.h,
                    text: "msg_buy_from_the_store".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBagPrimary,
                        height: 17.v,
                        width: 15.h,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
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
        text: "msg_ratings_reviews".tr,
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

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String overallRating,
    required String ratingsCounter,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overallRating,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        SizedBox(height: 1.v),
        Text(
          ratingsCounter,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
