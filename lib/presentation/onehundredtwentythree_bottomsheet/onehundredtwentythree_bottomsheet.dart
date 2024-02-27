import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredtwentythree_bloc.dart';
import 'models/onehundredtwentythree_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredtwentythreeBottomsheet extends StatelessWidget {
  const OnehundredtwentythreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentythreeBloc>(
      create: (context) => OnehundredtwentythreeBloc(OnehundredtwentythreeState(
        onehundredtwentythreeModelObj: OnehundredtwentythreeModel(),
      ))
        ..add(OnehundredtwentythreeInitialEvent()),
      child: OnehundredtwentythreeBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 7.v,
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
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDeadline1,
                  height: 92.adaptSize,
                  width: 92.adaptSize,
                  margin: EdgeInsets.only(top: 15.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 93.h,
                    bottom: 80.v,
                  ),
                  child: CustomIconButton(
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    child: CustomImageView(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_please_wait".tr,
            style: CustomTextStyles.titleLargePrimary,
          ),
          SizedBox(height: 3.v),
          Text(
            "msg_we_will_contact".tr,
            style: CustomTextStyles.titleMediumGray600,
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
