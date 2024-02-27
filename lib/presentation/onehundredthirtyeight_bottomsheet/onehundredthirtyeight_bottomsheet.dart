import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredthirtyeight_bloc.dart';
import 'models/onehundredthirtyeight_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirtyeightBottomsheet extends StatelessWidget {
  const OnehundredthirtyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtyeightBloc>(
      create: (context) => OnehundredthirtyeightBloc(OnehundredthirtyeightState(
        onehundredthirtyeightModelObj: OnehundredthirtyeightModel(),
      ))
        ..add(OnehundredthirtyeightInitialEvent()),
      child: OnehundredthirtyeightBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 72.h,
                      child: Divider(
                        color: appTheme.blueGray10001,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgWallet3194x94,
                      height: 94.adaptSize,
                      width: 94.adaptSize,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 93.h,
                    bottom: 87.v,
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
          SizedBox(height: 14.v),
          Text(
            "msg_successfully_completed".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 5.v),
          Text(
            "msg_balance_has_been".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_200_yer2".tr,
            style: CustomTextStyles.titleMediumGreenA4000118,
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
