import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredsixtyfive_bloc.dart';
import 'models/onehundredsixtyfive_model.dart';

class OnehundredsixtyfiveScreen extends StatelessWidget {
  const OnehundredsixtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtyfiveBloc>(
      create: (context) => OnehundredsixtyfiveBloc(OnehundredsixtyfiveState(
        onehundredsixtyfiveModelObj: OnehundredsixtyfiveModel(),
      ))
        ..add(OnehundredsixtyfiveInitialEvent()),
      child: OnehundredsixtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredsixtyfiveBloc, OnehundredsixtyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 26.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup43311,
                    height: 95.v,
                    width: 132.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_terms_title".tr,
                      style: CustomTextStyles.titleLarge22,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 307.h,
                    margin: EdgeInsets.only(right: 19.h),
                    child: Text(
                      "msg_lorem_ipsum_is_placeholder3".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 311.h,
                    margin: EdgeInsets.only(right: 14.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    width: 301.h,
                    margin: EdgeInsets.only(right: 25.h),
                    child: Text(
                      "msg_duis_aute_irure".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_terms_title".tr,
                      style: CustomTextStyles.titleLarge22,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    width: 321.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: Text(
                      "msg_lorem_ipsum_is_placeholder3".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    width: 311.h,
                    margin: EdgeInsets.only(right: 14.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    width: 301.h,
                    margin: EdgeInsets.only(right: 25.h),
                    child: Text(
                      "msg_duis_aute_irure".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.26,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
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
        text: "msg_terms_and_conditions".tr,
      ),
    );
  }
}
