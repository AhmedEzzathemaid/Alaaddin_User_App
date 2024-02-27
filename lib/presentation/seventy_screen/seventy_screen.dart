import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/seventy_bloc.dart';
import 'models/seventy_model.dart';

class SeventyScreen extends StatelessWidget {
  const SeventyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventyBloc>(
      create: (context) => SeventyBloc(SeventyState(
        seventyModelObj: SeventyModel(),
      ))
        ..add(SeventyInitialEvent()),
      child: SeventyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSixtynine,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildElHodaStore(context),
                Spacer(
                  flex: 76,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMapPin,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 74.h),
                ),
                Spacer(
                  flex: 23,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildElHodaStore(BuildContext context) {
    return SizedBox(
      height: 248.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 19.h,
                top: 183.v,
                right: 19.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle31,
                    height: 49.adaptSize,
                    width: 49.adaptSize,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_el_hoda_store".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "lbl_1_2_km".tr,
                          style: CustomTextStyles.bodySmallRed60011,
                        ),
                        _buildSignal(
                          context,
                          ratingValue: "lbl_4_8".tr,
                          ratingText: "lbl_574_ratings".tr,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.gradientWhiteAToWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 45.v,
                    leadingWidth: 65.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "lbl_delivery_points".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: BlocSelector<SeventyBloc, SeventyState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_el".tr,
                          borderDecoration: SearchViewStyleHelper.fillGray,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 19.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlineGray20004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle30,
                          height: 49.adaptSize,
                          width: 49.adaptSize,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 1.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_el_nor_store".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                "lbl_1_2_km".tr,
                                style: CustomTextStyles.bodySmallRed60011,
                              ),
                              _buildSignal(
                                context,
                                ratingValue: "lbl_4_8".tr,
                                ratingText: "lbl_574_ratings".tr,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSignal(
    BuildContext context, {
    required String ratingValue,
    required String ratingText,
  }) {
    return SizedBox(
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
            ratingValue,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              ratingText,
              style: CustomTextStyles.bodySmall11.copyWith(
                color: appTheme.gray600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
