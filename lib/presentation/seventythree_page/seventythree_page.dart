import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/seventythree_bloc.dart';
import 'models/cashcomponent_item_model.dart';
import 'models/seventythree_model.dart';
import 'models/userprofile5_item_model.dart';
import 'widgets/cashcomponent_item_widget.dart';
import 'widgets/userprofile5_item_widget.dart';

// ignore_for_file: must_be_immutable
class SeventythreePage extends StatefulWidget {
  const SeventythreePage({Key? key})
      : super(
          key: key,
        );

  @override
  SeventythreePageState createState() => SeventythreePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SeventythreeBloc>(
      create: (context) => SeventythreeBloc(SeventythreeState(
        seventythreeModelObj: SeventythreeModel(),
      ))
        ..add(SeventythreeInitialEvent()),
      child: SeventythreePage(),
    );
  }
}

class SeventythreePageState extends State<SeventythreePage>
    with AutomaticKeepAliveClientMixin<SeventythreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDeliveryPoint(context),
                      SizedBox(height: 12.v),
                      Divider(
                        indent: 1.h,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_payment_method".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildCashComponent(context),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "msg_sender_full_name".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildFullName(context),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "msg_sender_mobile_number".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "msg_account_transfer".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildGroup239(context),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "msg_electronic_wallets".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildUserProfile(context),
                      SizedBox(height: 11.v),
                      _buildConfirmOrder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryPoint(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup118,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_delivery_point".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_el_noor".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 14.v,
            ),
            child: Text(
              "lbl_2_1_km2".tr,
              style: CustomTextStyles.bodyMediumRed600_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary13x6,
            height: 13.v,
            width: 6.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 18.v,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCashComponent(BuildContext context) {
    return BlocSelector<SeventythreeBloc, SeventythreeState,
        SeventythreeModel?>(
      selector: (state) => state.seventythreeModelObj,
      builder: (context, seventythreeModelObj) {
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
          itemCount: seventythreeModelObj?.cashcomponentItemList.length ?? 0,
          itemBuilder: (context, index) {
            CashcomponentItemModel model =
                seventythreeModelObj?.cashcomponentItemList[index] ??
                    CashcomponentItemModel();
            return CashcomponentItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SeventythreeBloc, SeventythreeState,
          TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
            controller: fullNameController,
            hintText: "lbl_mohmed_ahmed".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocBuilder<SeventythreeBloc, SeventythreeState>(
      builder: (context, state) {
        return CustomPhoneNumber(
          country: state.selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: state.phoneNumberController,
          onTap: (Country value) {
            context
                .read<SeventythreeBloc>()
                .add(ChangeCountryEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup239(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SeventythreeBloc, SeventythreeState,
          TextEditingController?>(
        selector: (state) => state.group239Controller,
        builder: (context, group239Controller) {
          return CustomTextFormField(
            controller: group239Controller,
            hintText: "lbl_0000_0000_0000".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
            fillColor: appTheme.gray10003,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<SeventythreeBloc, SeventythreeState,
        SeventythreeModel?>(
      selector: (state) => state.seventythreeModelObj,
      builder: (context, seventythreeModelObj) {
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
          itemCount: seventythreeModelObj?.userprofile5ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile5ItemModel model =
                seventythreeModelObj?.userprofile5ItemList[index] ??
                    Userprofile5ItemModel();
            return Userprofile5ItemWidget(
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
      margin: EdgeInsets.only(left: 1.h),
    );
  }
}
