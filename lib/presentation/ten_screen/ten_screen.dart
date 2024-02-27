import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/ten_bloc.dart';
import 'models/ten_model.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/userprofile1_item_widget.dart';

class TenScreen extends StatelessWidget {
  const TenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TenBloc>(
      create: (context) => TenBloc(TenState(
        tenModelObj: TenModel(),
      ))
        ..add(TenInitialEvent()),
      child: TenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              _buildNewAddress(context),
              SizedBox(height: 13.v),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildSelectAddress(context),
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
        text: "lbl_addresses".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_select_address".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomOutlinedButton(
            width: 125.h,
            text: "lbl_new_address".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 14.v,
                width: 13.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<TenBloc, TenState, TenModel?>(
      selector: (state) => state.tenModelObj,
      builder: (context, tenModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: tenModelObj?.userprofile1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model =
                tenModelObj?.userprofile1ItemList[index] ??
                    Userprofile1ItemModel();
            return Userprofile1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSelectAddress(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_select_address".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 34.v,
      ),
    );
  }
}
