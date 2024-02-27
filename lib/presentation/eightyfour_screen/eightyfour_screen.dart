import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/core/utils/validation_functions.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/eightyfour_bloc.dart';
import 'models/allthebest_item_model.dart';
import 'models/eightyfour_model.dart';
import 'models/zipcode_item_model.dart';
import 'widgets/allthebest_item_widget.dart';
import 'widgets/zipcode_item_widget.dart';

class EightyfourScreen extends StatelessWidget {
  EightyfourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EightyfourBloc>(
      create: (context) => EightyfourBloc(EightyfourState(
        eightyfourModelObj: EightyfourModel(),
      ))
        ..add(EightyfourInitialEvent()),
      child: EightyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildUploadYourDesign1(context),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAllTheBest211x349,
                    height: 211.v,
                    width: 349.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildAllTheBest(context),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text(
                        "lbl_select_balance".tr,
                        style: CustomTextStyles.titleMedium17_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildZipcode(context),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text(
                        "lbl_add_text".tr,
                        style: CustomTextStyles.titleMediumOnPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildEmail(context),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text(
                        "lbl_enter_email".tr,
                        style: CustomTextStyles.titleMediumOnPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildEmail1(context),
                  SizedBox(height: 19.v),
                  _buildPreview(context),
                  SizedBox(height: 13.v),
                  _buildSendToEmail(context),
                ],
              ),
            ),
          ),
        ),
      ),
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
        text: "msg_order_a_certificates".tr,
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
  Widget _buildUploadYourDesign(BuildContext context) {
    return CustomOutlinedButton(
      height: 29.v,
      width: 150.h,
      text: "msg_upload_your_design".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClosePrimary15x15,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadYourDesign1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_choose_a_design".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          _buildUploadYourDesign(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAllTheBest(BuildContext context) {
    return SizedBox(
      height: 64.v,
      child: BlocSelector<EightyfourBloc, EightyfourState, EightyfourModel?>(
        selector: (state) => state.eightyfourModelObj,
        builder: (context, eightyfourModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 13.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: eightyfourModelObj?.allthebestItemList.length ?? 0,
            itemBuilder: (context, index) {
              AllthebestItemModel model =
                  eightyfourModelObj?.allthebestItemList[index] ??
                      AllthebestItemModel();
              return AllthebestItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: BlocSelector<EightyfourBloc, EightyfourState, EightyfourModel?>(
        selector: (state) => state.eightyfourModelObj,
        builder: (context, eightyfourModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 13.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 5.h,
              );
            },
            itemCount: eightyfourModelObj?.zipcodeItemList.length ?? 0,
            itemBuilder: (context, index) {
              ZipcodeItemModel model =
                  eightyfourModelObj?.zipcodeItemList[index] ??
                      ZipcodeItemModel();
              return ZipcodeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child:
          BlocSelector<EightyfourBloc, EightyfourState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "lbl_type_here".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            maxLines: 4,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child:
          BlocSelector<EightyfourBloc, EightyfourState, TextEditingController?>(
        selector: (state) => state.emailController1,
        builder: (context, emailController1) {
          return CustomTextFormField(
            controller: emailController1,
            hintText: "msg_username_mailcom".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 16.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMail02,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 41.v,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 11.v,
              bottom: 11.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPreview(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "lbl_preview".tr,
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
      buttonTextStyle: CustomTextStyles.titleMediumBold,
    );
  }

  /// Section Widget
  Widget _buildSendToEmail(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send_to_email".tr,
      margin: EdgeInsets.symmetric(horizontal: 13.h),
    );
  }
}
