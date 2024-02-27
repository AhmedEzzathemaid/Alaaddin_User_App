import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredfortyone_bloc.dart';
import 'models/onehundredfortyone_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredfortyoneBottomsheet extends StatelessWidget {
  const OnehundredfortyoneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortyoneBloc>(
      create: (context) => OnehundredfortyoneBloc(OnehundredfortyoneState(
        onehundredfortyoneModelObj: OnehundredfortyoneModel(),
      ))
        ..add(OnehundredfortyoneInitialEvent()),
      child: OnehundredfortyoneBottomsheet(),
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
                  imagePath: ImageConstant.imgCancel1,
                  height: 95.adaptSize,
                  width: 95.adaptSize,
                  margin: EdgeInsets.only(top: 12.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 94.h,
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
          SizedBox(height: 9.v),
          Text(
            "lbl_sorry".tr,
            style: CustomTextStyles.titleMediumRed600,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 276.h,
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "msg_there_is_not_enough".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray60017_1.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
