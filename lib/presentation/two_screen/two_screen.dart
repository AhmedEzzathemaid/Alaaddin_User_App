import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/two_bloc.dart';
import 'models/two_model.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TwoBloc>(
      create: (context) => TwoBloc(TwoState(
        twoModelObj: TwoModel(),
      ))
        ..add(TwoInitialEvent()),
      child: TwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TwoBloc, TwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.15,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPath39635,
                      height: 89.v,
                      width: 108.h,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildAppBar(context),
                        SizedBox(height: 74.v),
                        SizedBox(
                          height: 657.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Opacity(
                                opacity: 0.1,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 232.v,
                                  width: 212.h,
                                  alignment: Alignment.bottomLeft,
                                ),
                              ),
                              Opacity(
                                opacity: 0.1,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgVectorOnerror,
                                  height: 337.v,
                                  width: 242.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(bottom: 68.v),
                                ),
                              ),
                              _buildText(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  margin: EdgeInsets.only(bottom: 44.v),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30.h,
                                            ),
                                            border: Border.all(
                                              color: theme.colorScheme.primary
                                                  .withOpacity(1),
                                              width: 3.h,
                                              strokeAlign: strokeAlignOutside,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 50.adaptSize,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 21.h,
                                            vertical: 12.v,
                                          ),
                                          decoration: AppDecoration
                                              .fillDeepPurple
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Text(
                                            "lbl_1".tr,
                                            style: CustomTextStyles
                                                .titleLargeGray900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage1571,
                                height: 277.v,
                                width: 327.h,
                                alignment: Alignment.topCenter,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
      height: 23.v,
      actions: [
        AppbarSubtitleOne(
          text: "lbl_skip".tr,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 3.v,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(
            left: 6.h,
            right: 20.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildText(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 21.h,
          bottom: 153.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 203.h,
              child: Text(
                "msg_explore_best_products".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall,
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 331.h,
              child: Text(
                "msg_it_is_a_long_established".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeGray600.copyWith(
                  height: 1.38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
