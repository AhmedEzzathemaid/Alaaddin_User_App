import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredtwelve_bloc.dart';
import 'models/onehundredtwelve_model.dart';
import 'models/userprofile9_item_model.dart';
import 'widgets/userprofile9_item_widget.dart';

class OnehundredtwelveScreen extends StatelessWidget {
  const OnehundredtwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwelveBloc>(
      create: (context) => OnehundredtwelveBloc(OnehundredtwelveState(
        onehundredtwelveModelObj: OnehundredtwelveModel(),
      ))
        ..add(OnehundredtwelveInitialEvent()),
      child: OnehundredtwelveScreen(),
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
        child: BlocSelector<OnehundredtwelveBloc, OnehundredtwelveState,
            OnehundredtwelveModel?>(
          selector: (state) => state.onehundredtwelveModelObj,
          builder: (context, onehundredtwelveModelObj) {
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
              itemCount:
                  onehundredtwelveModelObj?.userprofile9ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofile9ItemModel model =
                    onehundredtwelveModelObj?.userprofile9ItemList[index] ??
                        Userprofile9ItemModel();
                return Userprofile9ItemWidget(
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
