import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/thirtytwo_bloc.dart';
import 'models/thirtytwo_model.dart';

class ThirtytwoScreen extends StatelessWidget {
  const ThirtytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtytwoBloc>(
      create: (context) => ThirtytwoBloc(ThirtytwoState(
        thirtytwoModelObj: ThirtytwoModel(),
      ))
        ..add(ThirtytwoInitialEvent()),
      child: ThirtytwoScreen(),
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
              _buildCategoryTwo(context),
              SizedBox(height: 7.v),
              _buildCategoryThree(context),
              SizedBox(height: 7.v),
              _buildCategoryFour(context),
              SizedBox(height: 7.v),
              _buildCategoryFive(context),
              SizedBox(height: 7.v),
              _buildCategorySix(context),
              SizedBox(height: 7.v),
              _buildCategorySeven(context),
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
        text: "lbl_men".tr,
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
  Widget _buildCategoryTwo(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categoryTwoController,
      builder: (context, categoryTwoController) {
        return CustomTextFormField(
          controller: categoryTwoController,
          hintText: "lbl_clothes".tr,
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
  Widget _buildCategoryThree(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categoryThreeController,
      builder: (context, categoryThreeController) {
        return CustomTextFormField(
          controller: categoryThreeController,
          hintText: "lbl_shoes".tr,
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
  Widget _buildCategoryFour(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categoryFourController,
      builder: (context, categoryFourController) {
        return CustomTextFormField(
          controller: categoryFourController,
          hintText: "lbl_bags".tr,
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
  Widget _buildCategoryFive(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categoryFiveController,
      builder: (context, categoryFiveController) {
        return CustomTextFormField(
          controller: categoryFiveController,
          hintText: "lbl_accessories".tr,
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
  Widget _buildCategorySix(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categorySixController,
      builder: (context, categorySixController) {
        return CustomTextFormField(
          controller: categorySixController,
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
  Widget _buildCategorySeven(BuildContext context) {
    return BlocSelector<ThirtytwoBloc, ThirtytwoState, TextEditingController?>(
      selector: (state) => state.categorySevenController,
      builder: (context, categorySevenController) {
        return CustomTextFormField(
          controller: categorySevenController,
          hintText: "lbl_beauty".tr,
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
