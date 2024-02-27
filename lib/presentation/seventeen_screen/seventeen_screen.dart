import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/seventeen_bloc.dart';
import 'models/seventeen_model.dart';
import 'models/storeinfo4_item_model.dart';
import 'widgets/storeinfo4_item_widget.dart';

class SeventeenScreen extends StatelessWidget {
  const SeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SeventeenBloc>(
      create: (context) => SeventeenBloc(SeventeenState(
        seventeenModelObj: SeventeenModel(),
      ))
        ..add(SeventeenInitialEvent()),
      child: SeventeenScreen(),
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
              BlocSelector<SeventeenBloc, SeventeenState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_o".tr,
                    contentPadding: EdgeInsets.only(
                      top: 14.v,
                      right: 30.h,
                      bottom: 14.v,
                    ),
                    borderDecoration: SearchViewStyleHelper.fillGray,
                  );
                },
              ),
              SizedBox(height: 12.v),
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(20.h, 1.v, 310.h, 1.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreInfo(BuildContext context) {
    return Expanded(
      child: BlocSelector<SeventeenBloc, SeventeenState, SeventeenModel?>(
        selector: (state) => state.seventeenModelObj,
        builder: (context, seventeenModelObj) {
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
            itemCount: seventeenModelObj?.storeinfo4ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Storeinfo4ItemModel model =
                  seventeenModelObj?.storeinfo4ItemList[index] ??
                      Storeinfo4ItemModel();
              return Storeinfo4ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
