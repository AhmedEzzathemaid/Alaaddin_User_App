import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredfortythree_bloc.dart';
import 'models/onehundredfortythree_model.dart';
import 'models/promotion_item_model.dart';
import 'widgets/promotion_item_widget.dart';

class OnehundredfortythreeScreen extends StatelessWidget {
  const OnehundredfortythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortythreeBloc>(
      create: (context) => OnehundredfortythreeBloc(OnehundredfortythreeState(
        onehundredfortythreeModelObj: OnehundredfortythreeModel(),
      ))
        ..add(OnehundredfortythreeInitialEvent()),
      child: OnehundredfortythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 19.v,
            right: 16.h,
          ),
          child: BlocSelector<OnehundredfortythreeBloc,
              OnehundredfortythreeState, OnehundredfortythreeModel?>(
            selector: (state) => state.onehundredfortythreeModelObj,
            builder: (context, onehundredfortythreeModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
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
                    onehundredfortythreeModelObj?.promotionItemList.length ?? 0,
                itemBuilder: (context, index) {
                  PromotionItemModel model =
                      onehundredfortythreeModelObj?.promotionItemList[index] ??
                          PromotionItemModel();
                  return PromotionItemWidget(
                    model,
                  );
                },
              );
            },
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
        text: "lbl_coupons".tr,
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
}
