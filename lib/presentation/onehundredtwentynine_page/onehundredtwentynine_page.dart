import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_drop_down.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredtwentynine_bloc.dart';
import 'models/onehundredtwentynine_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredtwentyninePage extends StatefulWidget {
  const OnehundredtwentyninePage({Key? key})
      : super(
          key: key,
        );

  @override
  OnehundredtwentyninePageState createState() =>
      OnehundredtwentyninePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentynineBloc>(
      create: (context) => OnehundredtwentynineBloc(OnehundredtwentynineState(
        onehundredtwentynineModelObj: OnehundredtwentynineModel(),
      ))
        ..add(OnehundredtwentynineInitialEvent()),
      child: OnehundredtwentyninePage(),
    );
  }
}

class OnehundredtwentyninePageState extends State<OnehundredtwentyninePage>
    with AutomaticKeepAliveClientMixin<OnehundredtwentyninePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_name".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildName(context),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_mobile_number".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: _buildPhoneNumber(context),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_email".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildActivate1(context),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_country".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.titleSmallRed600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<
                          OnehundredtwentynineBloc,
                          OnehundredtwentynineState,
                          OnehundredtwentynineModel?>(
                        selector: (state) => state.onehundredtwentynineModelObj,
                        builder: (context, onehundredtwentynineModelObj) {
                          return CustomDropDown(
                            hintText: "lbl_yemen".tr,
                            items: onehundredtwentynineModelObj
                                    ?.dropdownItemList ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<OnehundredtwentynineBloc>()
                                  .add(ChangeDropDownEvent(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildGovernorate(context),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_select_currency".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.titleSmallRed600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<
                          OnehundredtwentynineBloc,
                          OnehundredtwentynineState,
                          OnehundredtwentynineModel?>(
                        selector: (state) => state.onehundredtwentynineModelObj,
                        builder: (context, onehundredtwentynineModelObj) {
                          return CustomDropDown(
                            hintText: "lbl_yer".tr,
                            items: onehundredtwentynineModelObj
                                    ?.dropdownItemList3 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<OnehundredtwentynineBloc>()
                                  .add(ChangeDropDown3Event(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 26.v),
                    _buildSave(context),
                    SizedBox(height: 15.v),
                    _buildDeleteAccount(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<OnehundredtwentynineBloc, OnehundredtwentynineState,
          TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_mohmed_ahmed".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockGray600,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocBuilder<OnehundredtwentynineBloc, OnehundredtwentynineState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context
                  .read<OnehundredtwentynineBloc>()
                  .add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActivate(BuildContext context) {
    return CustomOutlinedButton(
      width: 81.h,
      text: "lbl_activate".tr,
    );
  }

  /// Section Widget
  Widget _buildActivate1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_username_mailcom".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          _buildActivate(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGovernorate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_governorate".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallRed600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                BlocSelector<OnehundredtwentynineBloc,
                    OnehundredtwentynineState, OnehundredtwentynineModel?>(
                  selector: (state) => state.onehundredtwentynineModelObj,
                  builder: (context, onehundredtwentynineModelObj) {
                    return CustomDropDown(
                      width: 164.h,
                      hintText: "lbl_shabwa".tr,
                      items:
                          onehundredtwentynineModelObj?.dropdownItemList1 ?? [],
                      onChanged: (value) {
                        context
                            .read<OnehundredtwentynineBloc>()
                            .add(ChangeDropDown1Event(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_city".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleSmallRed600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                BlocSelector<OnehundredtwentynineBloc,
                    OnehundredtwentynineState, OnehundredtwentynineModel?>(
                  selector: (state) => state.onehundredtwentynineModelObj,
                  builder: (context, onehundredtwentynineModelObj) {
                    return CustomDropDown(
                      width: 164.h,
                      hintText: "lbl_dar_muhaimud".tr,
                      items:
                          onehundredtwentynineModelObj?.dropdownItemList2 ?? [],
                      onChanged: (value) {
                        context
                            .read<OnehundredtwentynineBloc>()
                            .add(ChangeDropDown2Event(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save".tr,
    );
  }

  /// Section Widget
  Widget _buildDeleteAccount(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      text: "lbl_delete_account".tr,
      margin: EdgeInsets.only(left: 1.h),
      buttonStyle: CustomButtonStyles.fillRedTL10,
      buttonTextStyle: CustomTextStyles.titleSmallRed600,
    );
  }
}
