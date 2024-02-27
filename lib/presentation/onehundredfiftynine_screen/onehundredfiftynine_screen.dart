import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_phone_number.dart';
import 'bloc/onehundredfiftynine_bloc.dart';
import 'models/onehundredfiftynine_model.dart';

class OnehundredfiftynineScreen extends StatelessWidget {
  const OnehundredfiftynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftynineBloc>(
      create: (context) => OnehundredfiftynineBloc(OnehundredfiftynineState(
        onehundredfiftynineModelObj: OnehundredfiftynineModel(),
      ))
        ..add(OnehundredfiftynineInitialEvent()),
      child: OnehundredfiftynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowDown(context),
              SizedBox(height: 12.v),
              Text(
                "msg_forgot_password".tr,
                style: CustomTextStyles.headlineSmallOnSecondaryContainerBold,
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 223.h,
                child: Text(
                  "msg_enter_your_mobile".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium15.copyWith(
                    height: 1.48,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Text(
                    "lbl_mobile_number".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: BlocBuilder<OnehundredfiftynineBloc,
                    OnehundredfiftynineState>(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country: state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context
                            .read<OnehundredfiftynineBloc>()
                            .add(ChangeCountryEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.symmetric(horizontal: 29.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return SizedBox(
      height: 215.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillOnSecondaryContainer,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 168.v),
                    child: CustomIconButton(
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillGrayTL22,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDownWhiteA700,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43311Primary,
                    height: 133.v,
                    width: 186.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 37.v,
                      bottom: 42.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgPath39635,
              height: 66.v,
              width: 64.h,
              alignment: Alignment.bottomLeft,
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsPrimary66x67,
              height: 66.v,
              width: 67.h,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      ),
    );
  }
}
