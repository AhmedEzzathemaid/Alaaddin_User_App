import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_outlined_button.dart';
import 'bloc/onehundredfortyseven_bloc.dart';
import 'models/onehundredfortyseven_model.dart';
import 'models/viewhierarchy5_item_model.dart';
import 'widgets/viewhierarchy5_item_widget.dart';

class OnehundredfortysevenScreen extends StatelessWidget {
  const OnehundredfortysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortysevenBloc>(
      create: (context) => OnehundredfortysevenBloc(OnehundredfortysevenState(
        onehundredfortysevenModelObj: OnehundredfortysevenModel(),
      ))
        ..add(OnehundredfortysevenInitialEvent()),
      child: OnehundredfortysevenScreen(),
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
            vertical: 12.v,
          ),
          child: Column(
            children: [
              _buildNewAddress(context),
              SizedBox(height: 13.v),
              _buildViewHierarchy(context),
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
        text: "lbl_my_addresses".tr,
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
  Widget _buildNewAddress(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 160.h,
          child: Text(
            "msg_add_and_edit_your_addresses".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge!.copyWith(
              height: 1.10,
            ),
          ),
        ),
        CustomOutlinedButton(
          width: 124.h,
          text: "lbl_new_address2".tr,
          margin: EdgeInsets.only(
            left: 51.h,
            top: 9.v,
            bottom: 5.v,
          ),
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
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Expanded(
      child: BlocSelector<OnehundredfortysevenBloc, OnehundredfortysevenState,
          OnehundredfortysevenModel?>(
        selector: (state) => state.onehundredfortysevenModelObj,
        builder: (context, onehundredfortysevenModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 14.v,
              );
            },
            itemCount:
                onehundredfortysevenModelObj?.viewhierarchy5ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Viewhierarchy5ItemModel model =
                  onehundredfortysevenModelObj?.viewhierarchy5ItemList[index] ??
                      Viewhierarchy5ItemModel();
              return Viewhierarchy5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
