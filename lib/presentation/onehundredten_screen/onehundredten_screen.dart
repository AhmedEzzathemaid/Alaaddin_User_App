import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/core/utils/validation_functions.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_checkbox_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredten_bloc.dart';
import 'models/onehundredten_model.dart';

class OnehundredtenScreen extends StatelessWidget {
  OnehundredtenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtenBloc>(
      create: (context) => OnehundredtenBloc(OnehundredtenState(
        onehundredtenModelObj: OnehundredtenModel(),
      ))
        ..add(OnehundredtenInitialEvent()),
      child: OnehundredtenScreen(),
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
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5.v),
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDeliveryPoint(context),
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_choose_the_reason".tr,
                              style: CustomTextStyles.titleMediumSemiBold,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildBomberJackets(context),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_choose_the_reason2".tr,
                              style: CustomTextStyles.titleMediumSemiBold,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildCheckmarksquareOne(context),
                          SizedBox(height: 11.v),
                          _buildTypeReason(context),
                          SizedBox(height: 11.v),
                          _buildPhotoToConfirm(context),
                          SizedBox(height: 9.v),
                          _buildView(context),
                          SizedBox(height: 12.v),
                          _buildEntireProduct(context),
                          SizedBox(height: 8.v),
                          _buildCloseUpDefect(context),
                          SizedBox(height: 8.v),
                          _buildPackagevalue(context),
                          SizedBox(height: 9.v),
                          _buildExpirationDate(context),
                          SizedBox(height: 9.v),
                          _buildNonRepairability(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildConfirm(context),
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
        text: "lbl_refund_product".tr,
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
  Widget _buildDeliveryPoint(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup118,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_delivery_point".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_choose_the_point".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary13x6,
            height: 13.v,
            width: 6.h,
            margin: EdgeInsets.symmetric(vertical: 18.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBomberJackets(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1685x85,
            height: 85.adaptSize,
            width: 85.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bomber_jackets".tr,
                  style: CustomTextStyles.titleMedium17,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      "lbl_30_0_yer".tr,
                      style: CustomTextStyles.labelLargeRed600_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_49_9_yer2".tr,
                        style: CustomTextStyles.labelLargeGray600.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_color_black".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_size_l".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "lbl_qty_x1".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarksquareOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFile,
                  height: 17.v,
                  width: 13.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "lbl_warranty_status".tr,
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: BlocSelector<OnehundredtenBloc, OnehundredtenState, bool?>(
              selector: (state) => state.checkmarksquareOne,
              builder: (context, checkmarksquareOne) {
                return CustomCheckboxButton(
                  text: "msg_the_item_is_broken".tr,
                  value: checkmarksquareOne,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<OnehundredtenBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  },
                );
              },
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 81.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkSquare01Gray600,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "msg_i_have_a_certificate".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeReason(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.typeReasonController,
        builder: (context, typeReasonController) {
          return CustomTextFormField(
            controller: typeReasonController,
            hintText: "msg_type_the_reason".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            maxLines: 3,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 11.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoToConfirm(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_photo_to_confirm".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "msg_in_png_jpeg_format".tr,
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          Container(
            height: 25.v,
            width: 38.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 1.h,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlinePrimary3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCamera,
              height: 14.v,
              width: 16.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 88.v,
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
              width: 299.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 9.v,
                bottom: 6.v,
              ),
              child: Text(
                "msg_to_have_your_application".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnSecondaryContainer.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEntireProduct(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.entireProductController,
        builder: (context, entireProductController) {
          return CustomTextFormField(
            controller: entireProductController,
            hintText: "lbl_entire_product".tr,
            hintStyle: theme.textTheme.titleSmall!,
            suffix: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 5.v,
              ),
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 8.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(1),
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 14.v,
                width: 16.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 42.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 13.h,
              top: 12.v,
              bottom: 12.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCloseUpDefect(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.closeUpDefectController,
        builder: (context, closeUpDefectController) {
          return CustomTextFormField(
            controller: closeUpDefectController,
            hintText: "msg_close_up_of_defect".tr,
            hintStyle: theme.textTheme.titleSmall!,
            suffix: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 5.v,
              ),
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 8.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(1),
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 14.v,
                width: 16.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 42.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 13.h,
              top: 12.v,
              bottom: 12.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPackagevalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.packagevalueController,
        builder: (context, packagevalueController) {
          return CustomTextFormField(
            controller: packagevalueController,
            hintText: "lbl_package".tr,
            hintStyle: theme.textTheme.titleSmall!,
            suffix: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 5.v,
              ),
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 8.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(1),
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 14.v,
                width: 16.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 42.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 13.h,
              top: 12.v,
              bottom: 12.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.expirationDateController,
        builder: (context, expirationDateController) {
          return CustomTextFormField(
            controller: expirationDateController,
            hintText: "msg_expiration_date".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.number,
            suffix: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 5.v,
              ),
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 8.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(1),
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 14.v,
                width: 16.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 42.v,
            ),
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              left: 13.h,
              top: 12.v,
              bottom: 12.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNonRepairability(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<OnehundredtenBloc, OnehundredtenState,
          TextEditingController?>(
        selector: (state) => state.nonRepairabilityController,
        builder: (context, nonRepairabilityController) {
          return CustomTextFormField(
            controller: nonRepairabilityController,
            hintText: "msg_act_of_non_repairability".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            suffix: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 5.v,
              ),
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 8.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(1),
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 14.v,
                width: 16.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 42.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 13.h,
              top: 12.v,
              bottom: 12.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm".tr,
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 30.v,
      ),
    );
  }
}
