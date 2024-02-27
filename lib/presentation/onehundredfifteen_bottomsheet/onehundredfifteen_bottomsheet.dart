import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/onehundredfifteen_bloc.dart';
import 'models/onehundredfifteen_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredfifteenBottomsheet extends StatelessWidget {
  const OnehundredfifteenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfifteenBloc>(
      create: (context) => OnehundredfifteenBloc(OnehundredfifteenState(
        onehundredfifteenModelObj: OnehundredfifteenModel(),
      ))
        ..add(OnehundredfifteenInitialEvent()),
      child: OnehundredfifteenBottomsheet(),
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
          SizedBox(height: 10.v),
          Container(
            width: 324.h,
            margin: EdgeInsets.only(
              left: 7.h,
              right: 5.h,
            ),
            child: Text(
              "msg_the_money_will_be".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLarge21.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
