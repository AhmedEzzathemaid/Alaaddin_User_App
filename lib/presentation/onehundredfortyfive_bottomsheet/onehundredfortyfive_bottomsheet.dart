import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredfortyfive_bloc.dart';
import 'models/onehundredfortyfive_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredfortyfiveBottomsheet extends StatelessWidget {
  const OnehundredfortyfiveBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortyfiveBloc>(
      create: (context) => OnehundredfortyfiveBloc(OnehundredfortyfiveState(
        onehundredfortyfiveModelObj: OnehundredfortyfiveModel(),
      ))
        ..add(OnehundredfortyfiveInitialEvent()),
      child: OnehundredfortyfiveBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
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
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img1904111,
                  height: 95.adaptSize,
                  width: 95.adaptSize,
                  margin: EdgeInsets.only(top: 19.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 94.h,
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
          SizedBox(height: 16.v),
          Text(
            "msg_the_amount_will".tr,
            style: CustomTextStyles.titleMedium19,
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
