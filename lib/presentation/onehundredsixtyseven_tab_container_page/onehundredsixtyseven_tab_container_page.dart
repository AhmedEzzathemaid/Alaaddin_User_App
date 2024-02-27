import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/eightyeight_page/eightyeight_page.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredeight_page/onehundredeight_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/onehundredsixtyseven_tab_container_bloc.dart';
import 'models/onehundredsixtyseven_tab_container_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredsixtysevenTabContainerPage extends StatefulWidget {
  const OnehundredsixtysevenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  OnehundredsixtysevenTabContainerPageState createState() =>
      OnehundredsixtysevenTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtysevenTabContainerBloc>(
      create: (context) => OnehundredsixtysevenTabContainerBloc(
          OnehundredsixtysevenTabContainerState(
        onehundredsixtysevenTabContainerModelObj:
            OnehundredsixtysevenTabContainerModel(),
      ))
        ..add(OnehundredsixtysevenTabContainerInitialEvent()),
      child: OnehundredsixtysevenTabContainerPage(),
    );
  }
}

class OnehundredsixtysevenTabContainerPageState
    extends State<OnehundredsixtysevenTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredsixtysevenTabContainerBloc,
        OnehundredsixtysevenTabContainerState>(
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
                    width: 215.h,
                    margin: EdgeInsets.only(left: 20.h),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.whiteA700,
                      labelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor: appTheme.gray600,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          7.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 11.h,
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
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "lbl_current".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: CustomElevatedButton(
                            height: 35.v,
                            width: 103.h,
                            text: "lbl_history".tr,
                            buttonStyle: CustomButtonStyles.fillGrayTL7,
                            buttonTextStyle: CustomTextStyles.bodyLargeGray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 580.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          OnehundredeightPage.builder(context),
                          EightyeightPage.builder(context),
                        ],
                      ),
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
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgUserPrimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_orders".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationIcon,
          margin: EdgeInsets.fromLTRB(18.h, 11.v, 18.h, 12.v),
        ),
      ],
    );
  }
}
