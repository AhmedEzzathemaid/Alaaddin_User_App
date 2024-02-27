import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentynine_page/onehundredtwentynine_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredtwentynine_tab_container_bloc.dart';
import 'models/onehundredtwentynine_tab_container_model.dart';

class OnehundredtwentynineTabContainerScreen extends StatefulWidget {
  const OnehundredtwentynineTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnehundredtwentynineTabContainerScreenState createState() =>
      OnehundredtwentynineTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentynineTabContainerBloc>(
      create: (context) => OnehundredtwentynineTabContainerBloc(
          OnehundredtwentynineTabContainerState(
        onehundredtwentynineTabContainerModelObj:
            OnehundredtwentynineTabContainerModel(),
      ))
        ..add(OnehundredtwentynineTabContainerInitialEvent()),
      child: OnehundredtwentynineTabContainerScreen(),
    );
  }
}

class OnehundredtwentynineTabContainerScreenState
    extends State<OnehundredtwentynineTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredtwentynineTabContainerBloc,
        OnehundredtwentynineTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14.v),
                  Container(
                    height: 35.v,
                    width: 255.h,
                    margin: EdgeInsets.only(left: 20.h),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.gray600,
                      labelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor: appTheme.whiteA700,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                        color: appTheme.gray20001,
                        borderRadius: BorderRadius.circular(
                          7.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9.h,
                              vertical: 6.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckmarkCircle01,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_information".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomElevatedButton(
                            height: 35.v,
                            width: 115.h,
                            text: "lbl_password".tr,
                            buttonStyle: CustomButtonStyles.fillGrayTL7,
                            buttonTextStyle: CustomTextStyles.bodyLargeGray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 672.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        OnehundredtwentyninePage.builder(context),
                        OnehundredtwentyninePage.builder(context),
                      ],
                    ),
                  ),
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
        text: "lbl_edit_profile".tr,
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
}
