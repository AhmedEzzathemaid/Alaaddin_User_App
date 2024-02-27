import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredtwentyeight_bloc.dart';
import 'models/onehundredtwentyeight_model.dart';

class OnehundredtwentyeightScreen extends StatelessWidget {
  const OnehundredtwentyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentyeightBloc>(
      create: (context) => OnehundredtwentyeightBloc(OnehundredtwentyeightState(
        onehundredtwentyeightModelObj: OnehundredtwentyeightModel(),
      ))
        ..add(OnehundredtwentyeightInitialEvent()),
      child: OnehundredtwentyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredtwentyeightBloc, OnehundredtwentyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: CustomImageView(
              imagePath: ImageConstant.imgPngegg11,
              height: 295.adaptSize,
              width: 295.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 35.v),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          bottom: 28.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(
            text: "lbl_order_barcode".tr,
            margin: EdgeInsets.symmetric(horizontal: 7.h),
          ),
          SizedBox(height: 11.v),
          AppbarTitle(
            text: "lbl_52156564320".tr,
          ),
        ],
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.fromLTRB(21.h, 2.v, 21.h, 30.v),
        ),
      ],
    );
  }
}
