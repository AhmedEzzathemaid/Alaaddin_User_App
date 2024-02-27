import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/seventyeight_bloc.dart';
import 'models/seventyeight_model.dart';

// ignore_for_file: must_be_immutable
class SeventyeightBottomsheet extends StatelessWidget {
  const SeventyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventyeightBloc>(
      create: (context) => SeventyeightBloc(SeventyeightState(
        seventyeightModelObj: SeventyeightModel(),
      ))
        ..add(SeventyeightInitialEvent()),
      child: SeventyeightBottomsheet(),
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
          SizedBox(height: 10.v),
          Text(
            "msg_sorry_there_is2".tr,
            style: CustomTextStyles.titleMediumRed600,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 236.h,
            margin: EdgeInsets.symmetric(horizontal: 50.h),
            child: Text(
              "msg_please_choose_another".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray600_1.copyWith(
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
