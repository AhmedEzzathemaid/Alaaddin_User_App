import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredfiftyfive_bloc.dart';
import 'models/onehundredfiftyfive_model.dart';

class OnehundredfiftyfiveScreen extends StatelessWidget {
  const OnehundredfiftyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftyfiveBloc>(
      create: (context) => OnehundredfiftyfiveBloc(OnehundredfiftyfiveState(
        onehundredfiftyfiveModelObj: OnehundredfiftyfiveModel(),
      ))
        ..add(OnehundredfiftyfiveInitialEvent()),
      child: OnehundredfiftyfiveScreen(),
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
              _buildItIsBeingWorked1(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildLoremIpsumOne(context),
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
                    _buildLoremIpsumOne1(context),
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
        bottomNavigationBar: _buildWriteHere1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildItIsBeingWorked(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 121.h,
      text: "msg_it_is_being_worked".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        bottom: 25.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFirrtimequarterpastGreenA40001,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGreenATL4,
      buttonTextStyle: CustomTextStyles.bodySmallGreenA40001,
    );
  }

  /// Section Widget
  Widget _buildItIsBeingWorked1(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                _buildItIsBeingWorked(context),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoremIpsumOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 33.h),
      child: BlocSelector<OnehundredfiftyfiveBloc, OnehundredfiftyfiveState,
          TextEditingController?>(
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
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL25,
            fillColor: theme.colorScheme.primary.withOpacity(1),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoremIpsumOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 33.h),
      child: BlocSelector<OnehundredfiftyfiveBloc, OnehundredfiftyfiveState,
          TextEditingController?>(
        selector: (state) => state.loremIpsumOneController1,
        builder: (context, loremIpsumOneController1) {
          return CustomTextFormField(
            controller: loremIpsumOneController1,
            hintText: "msg_lorem_ipsum_is_simply2".tr,
            alignment: Alignment.centerLeft,
            maxLines: 2,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 8.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL25,
            fillColor: theme.colorScheme.primary.withOpacity(1),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteHere(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.v),
        child: BlocSelector<OnehundredfiftyfiveBloc, OnehundredfiftyfiveState,
            TextEditingController?>(
          selector: (state) => state.writeHereController,
          builder: (context, writeHereController) {
            return CustomTextFormField(
              controller: writeHereController,
              hintText: "lbl_write_here".tr,
              hintStyle: theme.textTheme.bodyMedium!,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 12.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsGray60001,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 43.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
                bottom: 12.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
              fillColor: appTheme.gray10003,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteHere1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 11.h,
        right: 11.h,
        bottom: 31.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildWriteHere(context),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL22,
              child: CustomImageView(
                imagePath: ImageConstant.imgSave,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
