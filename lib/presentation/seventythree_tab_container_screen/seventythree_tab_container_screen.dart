import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/seventythree_page/seventythree_page.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/seventythree_tab_container_bloc.dart';
import 'models/seventythree_tab_container_model.dart';

class SeventythreeTabContainerScreen extends StatefulWidget {
  const SeventythreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SeventythreeTabContainerScreenState createState() =>
      SeventythreeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SeventythreeTabContainerBloc>(
      create: (context) =>
          SeventythreeTabContainerBloc(SeventythreeTabContainerState(
        seventythreeTabContainerModelObj: SeventythreeTabContainerModel(),
      ))
            ..add(SeventythreeTabContainerInitialEvent()),
      child: SeventythreeTabContainerScreen(),
    );
  }
}

class SeventythreeTabContainerScreenState
    extends State<SeventythreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeventythreeTabContainerBloc,
        SeventythreeTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 15.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_delivery_method".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      height: 35.v,
                      width: 290.h,
                      margin: EdgeInsets.only(left: 20.h),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.whiteA700,
                        labelStyle: TextStyle(
                          fontSize: 15.fSize,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelColor: appTheme.gray600,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 15.fSize,
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
                                    imagePath:
                                        ImageConstant.imgCheckmarkCircle01,
                                    height: 19.adaptSize,
                                    width: 19.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_delivery_points".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: CustomElevatedButton(
                              height: 35.v,
                              width: 138.h,
                              text: "lbl_by_courier".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL71,
                              buttonTextStyle: CustomTextStyles.bodyMedium15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1015.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          SeventythreePage.builder(context),
                          SeventythreePage.builder(context),
                        ],
                      ),
                    ),
                  ],
                ),
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
        text: "lbl_checkout".tr,
      ),
    );
  }
}
