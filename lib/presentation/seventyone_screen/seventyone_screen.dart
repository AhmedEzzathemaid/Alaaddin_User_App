import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/seventyone_bloc.dart';
import 'models/seventyone_model.dart';
import 'models/userprofile4_item_model.dart';
import 'widgets/userprofile4_item_widget.dart';

class SeventyoneScreen extends StatelessWidget {
  const SeventyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventyoneBloc>(
      create: (context) => SeventyoneBloc(SeventyoneState(
        seventyoneModelObj: SeventyoneModel(),
      ))
        ..add(SeventyoneInitialEvent()),
      child: SeventyoneScreen(),
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
            vertical: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_choose_the_delivery".tr,
                  style: CustomTextStyles.titleLargePrimaryRegular,
                ),
              ),
              SizedBox(height: 13.v),
              _buildUserProfile(context),
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
        text: "lbl_my_favourite2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<SeventyoneBloc, SeventyoneState, SeventyoneModel?>(
          selector: (state) => state.seventyoneModelObj,
          builder: (context, seventyoneModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: seventyoneModelObj?.userprofile4ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofile4ItemModel model =
                    seventyoneModelObj?.userprofile4ItemList[index] ??
                        Userprofile4ItemModel();
                return Userprofile4ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
