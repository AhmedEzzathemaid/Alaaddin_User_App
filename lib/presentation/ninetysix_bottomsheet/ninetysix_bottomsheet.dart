import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/ninetysix_bloc.dart';
import 'models/ninetysix_model.dart';

// ignore_for_file: must_be_immutable
class NinetysixBottomsheet extends StatelessWidget {
  const NinetysixBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NinetysixBloc>(
      create: (context) => NinetysixBloc(NinetysixState(
        ninetysixModelObj: NinetysixModel(),
      ))
        ..add(NinetysixInitialEvent()),
      child: NinetysixBottomsheet(),
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
          SizedBox(height: 21.v),
          CustomImageView(
            imagePath: ImageConstant.imgCancel1,
            height: 95.adaptSize,
            width: 95.adaptSize,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 250.h,
            margin: EdgeInsets.only(
              left: 42.h,
              right: 43.h,
            ),
            child: Text(
              "msg_are_you_sure_to4".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLarge21.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: 45.v,
                  text: "lbl_confirm".tr,
                  margin: EdgeInsets.only(right: 3.h),
                  buttonStyle: CustomButtonStyles.outlineIndigoD,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA70017,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 45.v,
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(left: 3.h),
                  buttonStyle: CustomButtonStyles.fillGrayTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumGray60017,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
