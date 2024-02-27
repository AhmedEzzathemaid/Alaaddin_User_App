import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredfiftyone_bloc.dart';
import 'models/onehundredfiftyone_model.dart';

class OnehundredfiftyoneScreen extends StatelessWidget {
  const OnehundredfiftyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftyoneBloc>(
      create: (context) => OnehundredfiftyoneBloc(OnehundredfiftyoneState(
        onehundredfiftyoneModelObj: OnehundredfiftyoneModel(),
      ))
        ..add(OnehundredfiftyoneInitialEvent()),
      child: OnehundredfiftyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredfiftyoneBloc, OnehundredfiftyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 20.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_how_can_i_track".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Container(
                    width: 328.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 10.h,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: 13,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildLineTwentySix(context),
                  SizedBox(height: 22.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 49.adaptSize,
                        width: 49.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserGray30001,
                        ),
                      ),
                      Container(
                        height: 49.v,
                        width: 51.h,
                        margin: EdgeInsets.only(left: 20.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserGray30001,
                              height: 49.v,
                              width: 51.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 31.v,
                                width: 35.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgBlushCheeks,
                                      height: 6.v,
                                      width: 35.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 10.v),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEyesClosed,
                                            height: 11.v,
                                            width: 34.h,
                                          ),
                                          SizedBox(height: 1.v),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgMobile,
                                            height: 19.v,
                                            width: 31.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
        text: "lbl_help".tr,
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
  Widget _buildLineTwentySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: SizedBox(
              width: 88.h,
              child: Divider(
                color: appTheme.blueGray10001,
              ),
            ),
          ),
          Text(
            "msg_is_the_problem_solved".tr,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: SizedBox(
              width: 88.h,
              child: Divider(
                color: appTheme.blueGray10001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
