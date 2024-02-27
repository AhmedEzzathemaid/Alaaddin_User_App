import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/core/utils/validation_functions.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/eightyfive_bloc.dart';
import 'models/eightyfive_model.dart';

class EightyfiveScreen extends StatelessWidget {
  EightyfiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EightyfiveBloc>(
      create: (context) => EightyfiveBloc(EightyfiveState(
        eightyfiveModelObj: EightyfiveModel(),
      ))
        ..add(EightyfiveInitialEvent()),
      child: EightyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildUploadYourDesign1(context),
                    _buildEmail1(context),
                    _buildAllTheBest(context),
                    _buildSendToEmail(context),
                    _buildSelectBalance(context),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 154.v,
                        ),
                        decoration: AppDecoration.fillBlack900,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildAllTheBest1(context),
                            SizedBox(height: 15.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 38.adaptSize,
                                  width: 38.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  decoration:
                                      IconButtonStyleHelper.fillGrayTL19,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgTwitter,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: CustomIconButton(
                                    height: 38.adaptSize,
                                    width: 38.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    decoration:
                                        IconButtonStyleHelper.fillGrayTL19,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgDownload,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 43.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAllTheBest3,
                      height: 64.v,
                      width: 101.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 318.v),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          top: 1.v,
          right: 13.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "msg_order_a_certificates".tr,
                      style: CustomTextStyles.titleMediumSemiBold18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineBlack,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBag,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Row(
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
            SizedBox(height: 12.v),
            CustomImageView(
              imagePath: ImageConstant.imgAllTheBest211x349,
              height: 211.v,
              width: 349.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<EightyfiveBloc, EightyfiveState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
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
    );
  }

  /// Section Widget
  Widget _buildPreview(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "lbl_preview".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
      buttonTextStyle: CustomTextStyles.titleMediumBold,
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          right: 13.h,
          bottom: 47.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_add_text".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
            SizedBox(height: 5.v),
            Container(
              width: 349.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.v),
                  Text(
                    "lbl_type_here".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "lbl_enter_email".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
            SizedBox(height: 6.v),
            _buildEmail(context),
            SizedBox(height: 19.v),
            _buildPreview(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllTheBest(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          top: 318.v,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAllTheBest64x101,
              height: 64.v,
              width: 101.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAllTheBest1,
              height: 64.v,
              width: 101.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 8.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAllTheBest2,
              height: 64.v,
              width: 101.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 8.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSendToEmail(BuildContext context) {
    return CustomElevatedButton(
      width: 349.h,
      text: "lbl_send_to_email".tr,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildSelectBalance(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          bottom: 312.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_select_balance".tr,
              style: CustomTextStyles.titleMedium17_1,
            ),
            SizedBox(height: 8.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineGray200041.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_2000".tr,
                    style: CustomTextStyles.titleSmallGray60015_1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlinePrimary1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_5000".tr,
                    style: CustomTextStyles.titleSmallPrimary15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineGray200041.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_8000".tr,
                    style: CustomTextStyles.titleSmallGray60015_1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineGray200041.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_12000".tr,
                    style: CustomTextStyles.titleSmallGray60015_1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineGray200041.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_12000".tr,
                    style: CustomTextStyles.titleSmallGray60015_1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllTheBest1(BuildContext context) {
    return SizedBox(
      height: 363.v,
      width: 349.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAllTheBest211x349,
            height: 244.v,
            width: 349.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 141.v,
              width: 349.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAllTheBest211x349,
                    height: 141.v,
                    width: 349.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 149.h,
                              vertical: 4.v,
                            ),
                            decoration: AppDecoration.fillPink50070.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "lbl_amount".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                                Text(
                                  "lbl_5000".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_congratulations".tr,
                            style: CustomTextStyles.bodyMediumOnPrimary,
                          ),
                          SizedBox(height: 3.v),
                          Container(
                            width: 308.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              right: 23.h,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_is_placeholder2".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .bodyMediumOnSecondaryContainer_1
                                  .copyWith(
                                height: 1.29,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
