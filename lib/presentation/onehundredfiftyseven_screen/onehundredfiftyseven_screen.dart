import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/onehundredfiftyseven_bloc.dart';
import 'models/onehundredfiftyseven_model.dart';
import 'models/orderconfirmation_item_model.dart';
import 'widgets/orderconfirmation_item_widget.dart';

class OnehundredfiftysevenScreen extends StatelessWidget {
  const OnehundredfiftysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfiftysevenBloc>(
      create: (context) => OnehundredfiftysevenBloc(OnehundredfiftysevenState(
        onehundredfiftysevenModelObj: OnehundredfiftysevenModel(),
      ))
        ..add(OnehundredfiftysevenInitialEvent()),
      child: OnehundredfiftysevenScreen(),
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
            top: 15.v,
            right: 19.h,
          ),
          child: BlocSelector<OnehundredfiftysevenBloc,
              OnehundredfiftysevenState, OnehundredfiftysevenModel?>(
            selector: (state) => state.onehundredfiftysevenModelObj,
            builder: (context, onehundredfiftysevenModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 10.v,
                  );
                },
                itemCount: onehundredfiftysevenModelObj
                        ?.orderconfirmationItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  OrderconfirmationItemModel model =
                      onehundredfiftysevenModelObj
                              ?.orderconfirmationItemList[index] ??
                          OrderconfirmationItemModel();
                  return OrderconfirmationItemWidget(
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
        text: "lbl_notifications".tr,
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
