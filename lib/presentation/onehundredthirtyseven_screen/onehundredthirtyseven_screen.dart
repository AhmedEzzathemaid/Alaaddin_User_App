import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredthirtyseven_bloc.dart';
import 'models/banking_item_model.dart';
import 'models/onehundredthirtyseven_model.dart';
import 'models/paymentoption1_item_model.dart';
import 'widgets/banking_item_widget.dart';
import 'widgets/paymentoption1_item_widget.dart';

class OnehundredthirtysevenScreen extends StatelessWidget {
  const OnehundredthirtysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtysevenBloc>(
      create: (context) => OnehundredthirtysevenBloc(OnehundredthirtysevenState(
        onehundredthirtysevenModelObj: OnehundredthirtysevenModel(),
      ))
        ..add(OnehundredthirtysevenInitialEvent()),
      child: OnehundredthirtysevenScreen(),
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
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_amount".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 7.v),
              _buildEmail(context),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_payment_method".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 5.v),
              _buildBanking(context),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_electronic_wallets".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 9.v),
              _buildPaymentOption(context),
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
        text: "lbl_add_balance".tr,
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
  Widget _buildEmail(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_200".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Text(
              "lbl_yer".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBanking(BuildContext context) {
    return Container(
      height: 51.v,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: BlocSelector<OnehundredthirtysevenBloc, OnehundredthirtysevenState,
          OnehundredthirtysevenModel?>(
        selector: (state) => state.onehundredthirtysevenModelObj,
        builder: (context, onehundredthirtysevenModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 9.h,
              );
            },
            itemCount:
                onehundredthirtysevenModelObj?.bankingItemList.length ?? 0,
            itemBuilder: (context, index) {
              BankingItemModel model =
                  onehundredthirtysevenModelObj?.bankingItemList[index] ??
                      BankingItemModel();
              return BankingItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentOption(BuildContext context) {
    return BlocSelector<OnehundredthirtysevenBloc, OnehundredthirtysevenState,
        OnehundredthirtysevenModel?>(
      selector: (state) => state.onehundredthirtysevenModelObj,
      builder: (context, onehundredthirtysevenModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 6.v,
            );
          },
          itemCount:
              onehundredthirtysevenModelObj?.paymentoption1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Paymentoption1ItemModel model =
                onehundredthirtysevenModelObj?.paymentoption1ItemList[index] ??
                    Paymentoption1ItemModel();
            return Paymentoption1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 33.v,
      ),
    );
  }
}
