import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/fiftyeight_bloc.dart';
import 'models/fiftyeight_item_model.dart';
import 'models/fiftyeight_model.dart';
import 'widgets/fiftyeight_item_widget.dart';

class FiftyeightScreen extends StatelessWidget {
  const FiftyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiftyeightBloc>(
      create: (context) => FiftyeightBloc(FiftyeightState(
        fiftyeightModelObj: FiftyeightModel(),
      ))
        ..add(FiftyeightInitialEvent()),
      child: FiftyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildFiftyEight(context),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: _buildApply(context),
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
        text: "lbl_characteristics".tr,
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_clear_all".tr,
          margin: EdgeInsets.fromLTRB(18.h, 18.v, 18.h, 10.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<FiftyeightBloc, FiftyeightState, FiftyeightModel?>(
        selector: (state) => state.fiftyeightModelObj,
        builder: (context, fiftyeightModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 9.v,
              );
            },
            itemCount: fiftyeightModelObj?.fiftyeightItemList.length ?? 0,
            itemBuilder: (context, index) {
              FiftyeightItemModel model =
                  fiftyeightModelObj?.fiftyeightItemList[index] ??
                      FiftyeightItemModel();
              return FiftyeightItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_apply".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 32.v,
      ),
    );
  }
}
