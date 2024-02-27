import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/thirtyfour_bloc.dart';
import 'models/thirtyfour_model.dart';

class ThirtyfourScreen extends StatelessWidget {
  const ThirtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtyfourBloc>(
      create: (context) => ThirtyfourBloc(ThirtyfourState(
        thirtyfourModelObj: ThirtyfourModel(),
      ))
        ..add(ThirtyfourInitialEvent()),
      child: ThirtyfourScreen(),
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
              _buildSizeCategory(context),
              SizedBox(height: 7.v),
              _buildCategory(context),
              SizedBox(height: 7.v),
              _buildSize(context),
              SizedBox(height: 7.v),
              _buildMaterial(context),
              SizedBox(height: 7.v),
              _buildFabric(context),
              SizedBox(height: 7.v),
              _buildStyle(context),
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
        text: "lbl_jackets".tr,
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
  Widget _buildSizeCategory(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.sizeCategoryController,
      builder: (context, sizeCategoryController) {
        return CustomTextFormField(
          controller: sizeCategoryController,
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
  Widget _buildCategory(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.categoryController,
      builder: (context, categoryController) {
        return CustomTextFormField(
          controller: categoryController,
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
  Widget _buildSize(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.sizeController,
      builder: (context, sizeController) {
        return CustomTextFormField(
          controller: sizeController,
          hintText: "lbl_small_size".tr,
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
  Widget _buildMaterial(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.materialController,
      builder: (context, materialController) {
        return CustomTextFormField(
          controller: materialController,
          hintText: "lbl_genuine_leather".tr,
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
  Widget _buildFabric(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.fabricController,
      builder: (context, fabricController) {
        return CustomTextFormField(
          controller: fabricController,
          hintText: "lbl_cotton".tr,
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
  Widget _buildStyle(BuildContext context) {
    return BlocSelector<ThirtyfourBloc, ThirtyfourState,
        TextEditingController?>(
      selector: (state) => state.styleController,
      builder: (context, styleController) {
        return CustomTextFormField(
          controller: styleController,
          hintText: "lbl_jeans".tr,
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
