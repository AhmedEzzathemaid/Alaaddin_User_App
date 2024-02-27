import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredthirtythree_bloc.dart';
import 'models/onehundredthirtythree_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredthirtythreeBottomsheet extends StatelessWidget {
  const OnehundredthirtythreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredthirtythreeBloc>(
      create: (context) => OnehundredthirtythreeBloc(OnehundredthirtythreeState(
        onehundredthirtythreeModelObj: OnehundredthirtythreeModel(),
      ))
        ..add(OnehundredthirtythreeInitialEvent()),
      child: OnehundredthirtythreeBottomsheet(),
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
          SizedBox(height: 8.v),
          Text(
            "msg_you_cannot_delete".tr,
            style: CustomTextStyles.titleMediumRed600,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 241.h,
            margin: EdgeInsets.only(
              left: 48.h,
              right: 47.h,
            ),
            child: Text(
              "msg_please_redeem_the".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray60017_1.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
