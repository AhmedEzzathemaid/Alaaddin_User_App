import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredfiftyfour_bloc.dart';
import 'models/onehundredfiftyfour_model.dart';
import 'models/viewhierarchy6_item_model.dart';
import 'widgets/viewhierarchy6_item_widget.dart';

class OnehundredfiftyfourScreen extends StatelessWidget {
  const OnehundredfiftyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftyfourBloc>(
      create: (context) => OnehundredfiftyfourBloc(OnehundredfiftyfourState(
        onehundredfiftyfourModelObj: OnehundredfiftyfourModel(),
      ))
        ..add(OnehundredfiftyfourInitialEvent()),
      child: OnehundredfiftyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup43311,
                height: 102.v,
                width: 142.h,
              ),
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    height: 35.v,
                    width: 103.h,
                    text: "lbl_add_new".tr,
                    margin: EdgeInsets.only(top: 7.v),
                    buttonStyle: CustomButtonStyles.fillGrayTL71,
                    buttonTextStyle: CustomTextStyles.bodyLargeGray600,
                  ),
                  Container(
                    height: 42.v,
                    width: 110.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 7.v,
                              right: 7.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 5.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckmarkCircle01,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 2.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_history2".tr,
                                    style: CustomTextStyles.bodyLargeWhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.outlineWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Text(
                              "lbl_2".tr,
                              style: CustomTextStyles.labelLargeWhiteA700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              _buildViewHierarchy(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_support".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return BlocSelector<OnehundredfiftyfourBloc, OnehundredfiftyfourState,
        OnehundredfiftyfourModel?>(
      selector: (state) => state.onehundredfiftyfourModelObj,
      builder: (context, onehundredfiftyfourModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount:
              onehundredfiftyfourModelObj?.viewhierarchy6ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Viewhierarchy6ItemModel model =
                onehundredfiftyfourModelObj?.viewhierarchy6ItemList[index] ??
                    Viewhierarchy6ItemModel();
            return Viewhierarchy6ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
