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
import 'bloc/eightythree_bloc.dart';
import 'models/eightythree_item_model.dart';
import 'models/eightythree_model.dart';
import 'widgets/eightythree_item_widget.dart';

class EightythreeScreen extends StatelessWidget {
  EightythreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EightythreeBloc>(
      create: (context) => EightythreeBloc(EightythreeState(
        eightythreeModelObj: EightythreeModel(),
      ))
        ..add(EightythreeInitialEvent()),
      child: EightythreeScreen(),
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 11.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAllTheBest,
                            height: 226.v,
                            width: 375.h,
                          ),
                          SizedBox(height: 13.v),
                          _buildView(context),
                          SizedBox(height: 8.v),
                          _buildDuration(context),
                          SizedBox(height: 8.v),
                          _buildGroup1000001174(context),
                          SizedBox(height: 8.v),
                          _buildGroup1000001168(context),
                          SizedBox(height: 11.v),
                          _buildChooseDesign1(context),
                          SizedBox(height: 7.v),
                          Divider(
                            color: appTheme.gray30003,
                            indent: 13.h,
                            endIndent: 13.h,
                          ),
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Text(
                                "lbl_select_balance".tr,
                                style: CustomTextStyles.titleMediumGray600_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildEightyThree(context),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSendToEmail(context),
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
        text: "lbl_certificate".tr,
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
  Widget _buildView(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 48.v,
            width: 10.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(1),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10.h),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 316.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Text(
                "msg_order_a_certificate".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    CustomTextStyles.bodyMediumOnSecondaryContainer_1.copyWith(
                  height: 1.40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDuration(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<EightythreeBloc, EightythreeState,
          TextEditingController?>(
        selector: (state) => state.durationController,
        builder: (context, durationController) {
          return CustomTextFormField(
            controller: durationController,
            hintText: "msg_delivery_to_email".tr,
            hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 8.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup1000001174(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<EightythreeBloc, EightythreeState,
          TextEditingController?>(
        selector: (state) => state.group1000001174Controller,
        builder: (context, group1000001174Controller) {
          return CustomTextFormField(
            controller: group1000001174Controller,
            hintText: "msg_personalize_your".tr,
            hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 3.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup1000001168(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<EightythreeBloc, EightythreeState,
          TextEditingController?>(
        selector: (state) => state.group1000001168Controller,
        builder: (context, group1000001168Controller) {
          return CustomTextFormField(
            controller: group1000001168Controller,
            hintText: "msg_pay_from_your_balance".tr,
            hintStyle: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 8.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseDesign(BuildContext context) {
    return CustomOutlinedButton(
      height: 29.v,
      width: 120.h,
      text: "lbl_choose_design".tr,
      margin: EdgeInsets.only(top: 24.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClosePrimary,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseDesign1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_electronic_gift".tr,
                style: CustomTextStyles.titleMediumBold18,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_5000_yer".tr,
                style: CustomTextStyles.titleLargeRed600,
              ),
            ],
          ),
          _buildChooseDesign(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: BlocSelector<EightythreeBloc, EightythreeState, EightythreeModel?>(
        selector: (state) => state.eightythreeModelObj,
        builder: (context, eightythreeModelObj) {
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
            itemCount: eightythreeModelObj?.eightythreeItemList.length ?? 0,
            itemBuilder: (context, index) {
              EightythreeItemModel model =
                  eightythreeModelObj?.eightythreeItemList[index] ??
                      EightythreeItemModel();
              return EightythreeItemWidget(
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
      child: BlocSelector<EightythreeBloc, EightythreeState,
          TextEditingController?>(
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
      child: BlocSelector<EightythreeBloc, EightythreeState,
          TextEditingController?>(
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
  Widget _buildSendToEmail(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send_to_email".tr,
      margin: EdgeInsets.only(
        left: 13.h,
        right: 13.h,
        bottom: 27.v,
      ),
    );
  }
}
