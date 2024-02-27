import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredtwentyseven_bloc.dart';
import 'models/onehundredtwentyseven_model.dart';
import 'models/productcard11_item_model.dart';
import 'widgets/productcard11_item_widget.dart';

class OnehundredtwentysevenScreen extends StatelessWidget {
  const OnehundredtwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentysevenBloc>(
      create: (context) => OnehundredtwentysevenBloc(OnehundredtwentysevenState(
        onehundredtwentysevenModelObj: OnehundredtwentysevenModel(),
      ))
        ..add(OnehundredtwentysevenInitialEvent()),
      child: OnehundredtwentysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 19.h,
            top: 11.v,
            right: 19.h,
          ),
          child: BlocSelector<OnehundredtwentysevenBloc,
              OnehundredtwentysevenState, OnehundredtwentysevenModel?>(
            selector: (state) => state.onehundredtwentysevenModelObj,
            builder: (context, onehundredtwentysevenModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 12.v,
                  );
                },
                itemCount: onehundredtwentysevenModelObj
                        ?.productcard11ItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  Productcard11ItemModel model = onehundredtwentysevenModelObj
                          ?.productcard11ItemList[index] ??
                      Productcard11ItemModel();
                  return Productcard11ItemWidget(
                    model,
                  );
                },
              );
            },
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
        text: "lbl_returns".tr,
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
