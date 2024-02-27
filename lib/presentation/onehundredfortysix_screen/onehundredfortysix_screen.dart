import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/onehundredfortysix_bloc.dart';
import 'models/onehundredfortysix_model.dart';
import 'models/storeinfo7_item_model.dart';
import 'widgets/storeinfo7_item_widget.dart';

class OnehundredfortysixScreen extends StatelessWidget {
  const OnehundredfortysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredfortysixBloc>(
      create: (context) => OnehundredfortysixBloc(OnehundredfortysixState(
        onehundredfortysixModelObj: OnehundredfortysixModel(),
      ))
        ..add(OnehundredfortysixInitialEvent()),
      child: OnehundredfortysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              BlocSelector<OnehundredfortysixBloc, OnehundredfortysixState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    contentPadding: EdgeInsets.only(
                      top: 14.v,
                      right: 30.h,
                      bottom: 14.v,
                    ),
                    borderDecoration: SearchViewStyleHelper.fillGray,
                  );
                },
              ),
              SizedBox(height: 11.v),
              _buildStoreInfo(context),
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
        text: "lbl_stores2".tr,
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
  Widget _buildStoreInfo(BuildContext context) {
    return BlocSelector<OnehundredfortysixBloc, OnehundredfortysixState,
        OnehundredfortysixModel?>(
      selector: (state) => state.onehundredfortysixModelObj,
      builder: (context, onehundredfortysixModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 11.v,
            );
          },
          itemCount: onehundredfortysixModelObj?.storeinfo7ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Storeinfo7ItemModel model =
                onehundredfortysixModelObj?.storeinfo7ItemList[index] ??
                    Storeinfo7ItemModel();
            return Storeinfo7ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
