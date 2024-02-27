import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/thirtythree_bloc.dart';
import 'models/thirtythree_model.dart';

class ThirtythreeScreen extends StatelessWidget {
  const ThirtythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtythreeBloc>(
      create: (context) => ThirtythreeBloc(ThirtythreeState(
        thirtythreeModelObj: ThirtythreeModel(),
      ))
        ..add(ThirtythreeInitialEvent()),
      child: ThirtythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(19.h),
          child: Column(
            children: [
              _buildJacketsvalue(context),
              SizedBox(height: 7.v),
              _buildCart(context),
              SizedBox(height: 7.v),
              _buildCart1(context),
              SizedBox(height: 7.v),
              _buildUnderwearvalue(context),
              SizedBox(height: 7.v),
              _buildJumpsuitsvalue(context),
              SizedBox(height: 7.v),
              _buildSportsvalue(context),
              SizedBox(height: 7.v),
              _buildBlazersvalue(context),
              SizedBox(height: 7.v),
              _buildBigsizesvalue(context),
              SizedBox(height: 7.v),
              _buildUnderwearvalue1(context),
              SizedBox(height: 7.v),
              _buildJumpsuitsvalue1(context),
              SizedBox(height: 5.v),
            ],
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
        text: "lbl_clothes".tr,
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
  Widget _buildJacketsvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.jacketsvalueController,
      builder: (context, jacketsvalueController) {
        return CustomTextFormField(
          controller: jacketsvalueController,
          hintText: "lbl_jackets".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCart(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.cartController,
      builder: (context, cartController) {
        return CustomTextFormField(
          controller: cartController,
          hintText: "msg_blouses_and_shirts".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCart1(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.cartController1,
      builder: (context, cartController1) {
        return CustomTextFormField(
          controller: cartController1,
          hintText: "msg_trousers_breeches".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUnderwearvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.underwearvalueController,
      builder: (context, underwearvalueController) {
        return CustomTextFormField(
          controller: underwearvalueController,
          hintText: "lbl_underwear".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildJumpsuitsvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.jumpsuitsvalueController,
      builder: (context, jumpsuitsvalueController) {
        return CustomTextFormField(
          controller: jumpsuitsvalueController,
          hintText: "lbl_jumpsuits".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSportsvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.sportsvalueController,
      builder: (context, sportsvalueController) {
        return CustomTextFormField(
          controller: sportsvalueController,
          hintText: "lbl_sports".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBlazersvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.blazersvalueController,
      builder: (context, blazersvalueController) {
        return CustomTextFormField(
          controller: blazersvalueController,
          hintText: "lbl_blazers".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBigsizesvalue(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.bigsizesvalueController,
      builder: (context, bigsizesvalueController) {
        return CustomTextFormField(
          controller: bigsizesvalueController,
          hintText: "lbl_big_sizes".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUnderwearvalue1(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.underwearvalueController1,
      builder: (context, underwearvalueController1) {
        return CustomTextFormField(
          controller: underwearvalueController1,
          hintText: "lbl_underwear".tr,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildJumpsuitsvalue1(BuildContext context) {
    return BlocSelector<ThirtythreeBloc, ThirtythreeState,
        TextEditingController?>(
      selector: (state) => state.jumpsuitsvalueController1,
      builder: (context, jumpsuitsvalueController1) {
        return CustomTextFormField(
          controller: jumpsuitsvalueController1,
          hintText: "lbl_jumpsuits".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 7.v,
            ),
            margin: EdgeInsets.fromLTRB(8.h, 6.v, 11.h, 6.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 12.v,
              width: 21.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 10.v,
            right: 30.h,
            bottom: 10.v,
          ),
        );
      },
    );
  }
}
