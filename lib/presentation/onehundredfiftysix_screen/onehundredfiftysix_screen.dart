import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredfiftysix_bloc.dart';
import 'models/onehundredfiftysix_model.dart';

class OnehundredfiftysixScreen extends StatelessWidget {
  const OnehundredfiftysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftysixBloc>(
      create: (context) => OnehundredfiftysixBloc(OnehundredfiftysixState(
        onehundredfiftysixModelObj: OnehundredfiftysixModel(),
      ))
        ..add(OnehundredfiftysixInitialEvent()),
      child: OnehundredfiftysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFinished(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 33.h),
                      child: BlocSelector<OnehundredfiftysixBloc,
                          OnehundredfiftysixState, TextEditingController?>(
                        selector: (state) => state.loremIpsumOneController,
                        builder: (context, loremIpsumOneController) {
                          return CustomTextFormField(
                            controller: loremIpsumOneController,
                            hintText: "msg_lorem_ipsum_is_simply2".tr,
                            alignment: Alignment.centerLeft,
                            maxLines: 2,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 8.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGrayTL25,
                            fillColor: theme.colorScheme.primary.withOpacity(1),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(right: 49.h),
                      child: Text(
                        "lbl_3_03pm".tr,
                        style: CustomTextStyles.bodySmallPoppinsGray40003,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Container(
                      margin: EdgeInsets.only(left: 77.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.outlineGray30005.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: 216.h,
                            child: Text(
                              "msg_lorem_ipsum_is_simply2".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyMediumOnSecondaryContainer_1
                                  .copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: Text(
                        "lbl_3_02pm".tr,
                        style: CustomTextStyles.bodySmallPoppinsGray40003,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(right: 33.h),
                      child: BlocSelector<OnehundredfiftysixBloc,
                          OnehundredfiftysixState, TextEditingController?>(
                        selector: (state) => state.loremIpsumOneController1,
                        builder: (context, loremIpsumOneController1) {
                          return CustomTextFormField(
                            controller: loremIpsumOneController1,
                            hintText: "msg_lorem_ipsum_is_simply2".tr,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.centerLeft,
                            maxLines: 2,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 8.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGrayTL25,
                            fillColor: theme.colorScheme.primary.withOpacity(1),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(right: 49.h),
                      child: Text(
                        "lbl_3_03pm".tr,
                        style: CustomTextStyles.bodySmallPoppinsGray40003,
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildChatHasBeenClosed(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFinished(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.outlineBlack,
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
              text: "lbl_support".tr,
            ),
            actions: [
              AppbarTrailingIconbuttonTwo(
                imagePath: ImageConstant.imgBag,
                margin: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 2.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_22_01_2023_09_30".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "msg_how_can_i_cancel".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 23.v,
                  width: 80.h,
                  text: "lbl_finished".tr,
                  margin: EdgeInsets.only(bottom: 25.v),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 6.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFirrtimedelete,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillRedTL4,
                  buttonTextStyle: CustomTextStyles.bodyMediumRed600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChatHasBeenClosed(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 57.h,
        right: 57.h,
        bottom: 34.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Text(
        "msg_chat_has_been_closed".tr,
        style: CustomTextStyles.titleMediumRed60017,
      ),
    );
  }
}
