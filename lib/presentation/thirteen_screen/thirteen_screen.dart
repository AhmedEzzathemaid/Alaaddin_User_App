import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/thirteen_bloc.dart';
import 'models/thirteen_model.dart';

class ThirteenScreen extends StatelessWidget {
  const ThirteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirteenBloc>(
      create: (context) => ThirteenBloc(ThirteenState(
        thirteenModelObj: ThirteenModel(),
      ))
        ..add(ThirteenInitialEvent()),
      child: ThirteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirteenBloc, ThirteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTheBlowupCzm,
                    height: 1322.v,
                    width: 375.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10.v),
                        _buildAppBar(context),
                        SizedBox(height: 182.v),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 630.v),
                              padding: EdgeInsets.symmetric(horizontal: 46.h),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 283.adaptSize,
                                    width: 283.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTheBlowupCzm281x281,
                                          height: 281.adaptSize,
                                          width: 281.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: 81.adaptSize,
                                            width: 81.adaptSize,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                                left: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 81.adaptSize,
                                            width: 81.adaptSize,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                                left: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            height: 81.adaptSize,
                                            width: 81.adaptSize,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                                left: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 81.adaptSize,
                                            width: 81.adaptSize,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                                left: BorderSide(
                                                  color: appTheme.whiteA700,
                                                  width: 5.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 118.v),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 106.h),
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder35,
                                    ),
                                    child: Container(
                                      height: 55.adaptSize,
                                      width: 55.adaptSize,
                                      decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                          27.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.black900,
                                          width: 3.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
      height: 27.v,
      leadingWidth: 19.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSearch,
        margin: EdgeInsets.only(left: 6.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(17.h, 3.v, 17.h, 2.v),
        ),
      ],
    );
  }
}
