import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredthirtynine_bloc.dart';
import 'models/onehundredthirtynine_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirtynineBottomsheet extends StatelessWidget {
  const OnehundredthirtynineBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtynineBloc>(
      create: (context) => OnehundredthirtynineBloc(OnehundredthirtynineState(
        onehundredthirtynineModelObj: OnehundredthirtynineModel(),
      ))
        ..add(OnehundredthirtynineInitialEvent()),
      child: OnehundredthirtynineBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 72.h,
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_balance_transfer".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_mobile_number".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          BlocBuilder<OnehundredthirtynineBloc, OnehundredthirtynineState>(
            builder: (context, state) {
              return CustomPhoneNumber(
                country: state.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: state.phoneNumberController,
                onTap: (Country value) {
                  context
                      .read<OnehundredthirtynineBloc>()
                      .add(ChangeCountryEvent(value: value));
                },
              );
            },
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_amount".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          BlocSelector<OnehundredthirtynineBloc, OnehundredthirtynineState,
              TextEditingController?>(
            selector: (state) => state.amountController,
            builder: (context, amountController) {
              return CustomTextFormField(
                controller: amountController,
                hintText: "lbl_100".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                suffix: Padding(
                  padding: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                  child: Text(
                    "lbl_yer".tr,
                    style: TextStyle(
                      color: Color(0XFFBFA274),
                      fontSize: 14.fSize,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 50.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineGray,
                fillColor: appTheme.gray10003,
              );
            },
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
