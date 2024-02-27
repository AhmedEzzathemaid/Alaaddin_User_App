import 'dart:async';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_drop_down.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/five_bloc.dart';
import 'models/five_model.dart';

class FiveScreen extends StatelessWidget {
  FiveScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<FiveBloc>(
      create: (context) => FiveBloc(FiveState(
        fiveModelObj: FiveModel(),
      ))
        ..add(FiveInitialEvent()),
      child: FiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: BlocSelector<FiveBloc, FiveState,
                              TextEditingController?>(
                            selector: (state) => state.searchController,
                            builder: (context, searchController) {
                              return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr,
                                contentPadding: EdgeInsets.only(
                                  top: 14.v,
                                  right: 30.h,
                                  bottom: 14.v,
                                ),
                                borderDecoration:
                                    SearchViewStyleHelper.fillGray,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildMap(context),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_address_name".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 5.h,
                                  bottom: 2.v,
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
                        _buildName(context),
                        SizedBox(height: 7.v),
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
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: BlocSelector<FiveBloc, FiveState, FiveModel?>(
                            selector: (state) => state.fiveModelObj,
                            builder: (context, fiveModelObj) {
                              return CustomDropDown(
                                hintText: "lbl_yemen".tr,
                                items: fiveModelObj?.dropdownItemList ?? [],
                                onChanged: (value) {
                                  context
                                      .read<FiveBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildGovernorate(context),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_street".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 3.h,
                                  bottom: 2.v,
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
                        _buildStvalue(context),
                        SizedBox(height: 7.v),
                        _buildValue(context),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_special_mark".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildFrontOfMcDonalds(context),
                        SizedBox(height: 10.v),
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
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_another_mobile_number".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildPhoneNumber1(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
        text: "lbl_add_address".tr,
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_skip".tr,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(
            left: 6.h,
            top: 13.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 175.v,
      width: 337.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<FiveBloc, FiveState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_home".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
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
          Expanded(
            child: Padding(
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
                          padding: EdgeInsets.only(
                            left: 5.h,
                            bottom: 2.v,
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
                  BlocSelector<FiveBloc, FiveState, FiveModel?>(
                    selector: (state) => state.fiveModelObj,
                    builder: (context, fiveModelObj) {
                      return CustomDropDown(
                        width: 164.h,
                        hintText: "lbl_shabwa".tr,
                        items: fiveModelObj?.dropdownItemList1 ?? [],
                        onChanged: (value) {
                          context
                              .read<FiveBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
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
                  SizedBox(height: 6.v),
                  BlocSelector<FiveBloc, FiveState, FiveModel?>(
                    selector: (state) => state.fiveModelObj,
                    builder: (context, fiveModelObj) {
                      return CustomDropDown(
                        width: 164.h,
                        hintText: "lbl_dar_muhaimud".tr,
                        items: fiveModelObj?.dropdownItemList2 ?? [],
                        onChanged: (value) {
                          context
                              .read<FiveBloc>()
                              .add(ChangeDropDown2Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStvalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<FiveBloc, FiveState, TextEditingController?>(
        selector: (state) => state.stvalueController,
        builder: (context, stvalueController) {
          return CustomTextFormField(
            controller: stvalueController,
            hintText: "lbl_st7".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 4.h),
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
                            "lbl_building_number".tr,
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
                  SizedBox(height: 6.v),
                  Container(
                    width: 164.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "lbl_23".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
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
                            "msg_apartment_number".tr,
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
                  SizedBox(height: 6.v),
                  BlocSelector<FiveBloc, FiveState, TextEditingController?>(
                    selector: (state) => state.valueController,
                    builder: (context, valueController) {
                      return CustomTextFormField(
                        width: 164.h,
                        controller: valueController,
                        hintText: "lbl_10".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        borderDecoration: TextFormFieldStyleHelper.outlineGray,
                        fillColor: appTheme.gray10003,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrontOfMcDonalds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<FiveBloc, FiveState, TextEditingController?>(
        selector: (state) => state.frontOfMcDonaldsController,
        builder: (context, frontOfMcDonaldsController) {
          return CustomTextFormField(
            controller: frontOfMcDonaldsController,
            hintText: "msg_front_of_mcdonald_s".tr,
            hintStyle: theme.textTheme.bodyMedium!,
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
      child: BlocBuilder<FiveBloc, FiveState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<FiveBloc>().add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocBuilder<FiveBloc, FiveState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry1 ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController1,
            onTap: (Country value) {
              context.read<FiveBloc>().add(ChangeCountry1Event(value: value));
            },
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
        left: 19.h,
        right: 19.h,
        bottom: 28.v,
      ),
    );
  }
}
