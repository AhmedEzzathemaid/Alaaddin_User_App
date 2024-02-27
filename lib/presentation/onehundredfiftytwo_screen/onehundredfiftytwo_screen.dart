import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredfiftytwo_bloc.dart';
import 'models/onehundredfiftytwo_model.dart';

class OnehundredfiftytwoScreen extends StatelessWidget {
  const OnehundredfiftytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftytwoBloc>(
      create: (context) => OnehundredfiftytwoBloc(OnehundredfiftytwoState(
        onehundredfiftytwoModelObj: OnehundredfiftytwoModel(),
      ))
        ..add(OnehundredfiftytwoInitialEvent()),
      child: OnehundredfiftytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredfiftytwoBloc, OnehundredfiftytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 16.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43311,
                    height: 102.v,
                    width: 142.h,
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        height: 35.v,
                        width: 103.h,
                        text: "lbl_add_new".tr,
                        margin: EdgeInsets.only(top: 7.v),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 2.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkCircle01,
                            height: 19.adaptSize,
                            width: 19.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                      ),
                      Container(
                        height: 42.v,
                        width: 110.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomElevatedButton(
                              height: 35.v,
                              width: 103.h,
                              text: "lbl_history2".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL7,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeGray600,
                              alignment: Alignment.bottomLeft,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 20.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlineWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.labelLargeWhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_how_can_i_track".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_how_can_i_cancel".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_i_can_t_pay_by_card".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_how_can_i_track".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_how_can_i_cancel".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildInbox(
                    context,
                    howCanICancel: "msg_i_can_t_pay_by_card".tr,
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
        text: "lbl_support".tr,
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
  Widget _buildInbox(
    BuildContext context, {
    required String howCanICancel,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInboxPrimary,
            height: 27.adaptSize,
            width: 27.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              howCanICancel,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVector6902,
            height: 11.v,
            width: 5.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.only(
              top: 8.v,
              right: 8.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
