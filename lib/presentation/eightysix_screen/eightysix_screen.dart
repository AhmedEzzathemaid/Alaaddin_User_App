import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/eightysix_bloc.dart';
import 'models/eightysix_model.dart';
import 'models/paymentmethod4_item_model.dart';
import 'models/walletcomponent_item_model.dart';
import 'widgets/paymentmethod4_item_widget.dart';
import 'widgets/walletcomponent_item_widget.dart';

class EightysixScreen extends StatelessWidget {
  const EightysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EightysixBloc>(
      create: (context) => EightysixBloc(EightysixState(
        eightysixModelObj: EightysixModel(),
      ))
        ..add(EightysixInitialEvent()),
      child: EightysixScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTotal(context),
              SizedBox(height: 10.v),
              Text(
                "lbl_payment_method".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              _buildWalletComponent(context),
              SizedBox(height: 9.v),
              _buildPaymentMethod(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmOrder(context),
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
        text: "lbl_checkout".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTotal(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_total".tr,
            style: CustomTextStyles.titleMediumRed600_2,
          ),
          Text(
            "lbl_90_0_yer".tr,
            style: CustomTextStyles.titleMediumRed600_2,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWalletComponent(BuildContext context) {
    return BlocSelector<EightysixBloc, EightysixState, EightysixModel?>(
      selector: (state) => state.eightysixModelObj,
      builder: (context, eightysixModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 7.v,
            );
          },
          itemCount: eightysixModelObj?.walletcomponentItemList.length ?? 0,
          itemBuilder: (context, index) {
            WalletcomponentItemModel model =
                eightysixModelObj?.walletcomponentItemList[index] ??
                    WalletcomponentItemModel();
            return WalletcomponentItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return BlocSelector<EightysixBloc, EightysixState, EightysixModel?>(
      selector: (state) => state.eightysixModelObj,
      builder: (context, eightysixModelObj) {
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
          itemCount: eightysixModelObj?.paymentmethod4ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Paymentmethod4ItemModel model =
                eightysixModelObj?.paymentmethod4ItemList[index] ??
                    Paymentmethod4ItemModel();
            return Paymentmethod4ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmOrder(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm_order".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 34.v,
      ),
    );
  }
}
