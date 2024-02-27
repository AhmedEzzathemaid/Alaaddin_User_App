import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/thirtyfive_bloc.dart';
import 'models/thirtyfive_model.dart';

class ThirtyfiveScreen extends StatelessWidget {
  const ThirtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtyfiveBloc>(
      create: (context) => ThirtyfiveBloc(ThirtyfiveState(
        thirtyfiveModelObj: ThirtyfiveModel(),
      ))
        ..add(ThirtyfiveInitialEvent()),
      child: ThirtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirtyfiveBloc, ThirtyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(19.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildCart(
                      context,
                      fabric: "lbl_long_sleeves".tr,
                      itemsCounter: "lbl_365_items".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildCart(
                      context,
                      fabric: "lbl_fabric".tr,
                      itemsCounter: "lbl_165_items".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildCart(
                      context,
                      fabric: "lbl_back_and_forth".tr,
                      itemsCounter: "lbl_89_items".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildCart(
                      context,
                      fabric: "lbl_short_sleeves".tr,
                      itemsCounter: "lbl_210_items".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
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
        text: "lbl_big_sizes".tr,
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

  /// Common widget
  Widget _buildCart(
    BuildContext context, {
    required String fabric,
    required String itemsCounter,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: CustomIconButton(
              height: 27.adaptSize,
              width: 27.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.fillOnSecondaryContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgCart,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              fabric,
              style: CustomTextStyles.titleSmall15_1.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              itemsCounter,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray600,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChevronRight,
            height: 9.v,
            width: 5.h,
            margin: EdgeInsets.fromLTRB(12.h, 9.v, 8.h, 9.v),
          ),
        ],
      ),
    );
  }
}
