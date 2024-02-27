import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_drop_down.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/four_bloc.dart';
import 'models/four_model.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FourBloc>(
      create: (context) => FourBloc(FourState(
        fourModelObj: FourModel(),
      ))
        ..add(FourInitialEvent()),
      child: FourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 36.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup2,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1000001274,
                        height: 260.v,
                        width: 262.h,
                      ),
                      SizedBox(height: 22.v),
                      Container(
                        width: 260.h,
                        margin: EdgeInsets.only(
                          left: 38.h,
                          right: 39.h,
                        ),
                        child: Text(
                          "msg_choose_the_city".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 23.v),
                      _buildCity(context),
                      SizedBox(height: 97.v),
                      CustomElevatedButton(
                        text: "lbl_confirm".tr,
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.15,
                child: CustomImageView(
                  imagePath: ImageConstant.imgPath39635,
                  height: 89.v,
                  width: 108.h,
                  alignment: Alignment.topLeft,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_city".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.titleSmallRed600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  BlocSelector<FourBloc, FourState, FourModel?>(
                    selector: (state) => state.fourModelObj,
                    builder: (context, fourModelObj) {
                      return CustomDropDown(
                        width: 153.h,
                        hintText: "lbl_dar_muhaimud".tr,
                        items: fourModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<FourBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_currency".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.titleSmallRed600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  BlocSelector<FourBloc, FourState, FourModel?>(
                    selector: (state) => state.fourModelObj,
                    builder: (context, fourModelObj) {
                      return CustomDropDown(
                        width: 153.h,
                        hintText: "lbl_yer".tr,
                        items: fourModelObj?.dropdownItemList1 ?? [],
                        onChanged: (value) {
                          context
                              .read<FourBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
