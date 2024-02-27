import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/sixtynine_bloc.dart';
import 'models/sixtynine_model.dart';

class SixtynineScreen extends StatelessWidget {
  const SixtynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtynineBloc>(
      create: (context) => SixtynineBloc(SixtynineState(
        sixtynineModelObj: SixtynineModel(),
      ))
        ..add(SixtynineInitialEvent()),
      child: SixtynineScreen(),
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
                _buildArrowDown(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 74.h,
                    vertical: 42.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 24.h,
                          right: 129.h,
                        ),
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillPrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder35,
                        ),
                        child: Container(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.fillPrimary2.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder25,
                          ),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL16,
                            alignment: Alignment.center,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLock,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 72.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 43.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 118.v,
                                width: 89.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMapPin,
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      alignment: Alignment.topCenter,
                                    ),
                                    _buildGrid(
                                      context,
                                      elHoda: "lbl_el_hoda".tr,
                                      distance: "lbl_4_0_km".tr,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMapPin,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 75.v,
                                  bottom: 15.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
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
  Widget _buildArrowDown(BuildContext context) {
    return SizedBox(
      height: 360.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
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
                    child: BlocSelector<SixtynineBloc, SixtynineState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_search".tr,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 50.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgMapPin,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 74.h),
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMapPin,
            height: 28.adaptSize,
            width: 28.adaptSize,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 91.v),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 143.h),
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 5.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder10,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup79,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 11.v),
                  CustomIconButton(
                    height: 37.adaptSize,
                    width: 37.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillTealTL18,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    height: 34.v,
                    width: 44.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_1_3_km".tr,
                            style: CustomTextStyles.titleSmallGray600SemiBold,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_el_safa".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 43.h,
              right: 243.h,
              bottom: 86.v,
            ),
            child: _buildGrid(
              context,
              elHoda: "lbl_el_noor".tr,
              distance: "lbl_2_1_km".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGrid(
    BuildContext context, {
    required String elHoda,
    required String distance,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 5.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup79,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 11.v),
          CustomIconButton(
            height: 37.adaptSize,
            width: 37.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillPurpleTL18,
            child: CustomImageView(
              imagePath: ImageConstant.imgGridWhiteA700,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            elHoda,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          Text(
            distance,
            style: CustomTextStyles.titleSmallGray600SemiBold.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ],
      ),
    );
  }
}
