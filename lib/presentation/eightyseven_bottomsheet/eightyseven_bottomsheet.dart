import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/eightyseven_bloc.dart';
import 'models/eightyseven_model.dart';

// ignore_for_file: must_be_immutable
class EightysevenBottomsheet extends StatelessWidget {
  const EightysevenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EightysevenBloc>(
      create: (context) => EightysevenBloc(EightysevenState(
        eightysevenModelObj: EightysevenModel(),
      ))
        ..add(EightysevenInitialEvent()),
      child: EightysevenBottomsheet(),
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
          SizedBox(height: 11.v),
          Text(
            "msg_successfully_confirmed".tr,
            style: CustomTextStyles.titleLargeGreenA40001,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_a_message_will_be".tr,
            style: CustomTextStyles.titleMediumGray600_1,
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
