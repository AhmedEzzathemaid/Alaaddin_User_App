import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/fifteen_bloc.dart';
import 'models/fifteen_model.dart';
import 'models/productlist5_item_model.dart';
import 'widgets/productlist5_item_widget.dart';

class FifteenScreen extends StatelessWidget {
  const FifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FifteenBloc>(
      create: (context) => FifteenBloc(FifteenState(
        fifteenModelObj: FifteenModel(),
      ))
        ..add(FifteenInitialEvent()),
      child: FifteenScreen(),
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
              BlocSelector<FifteenBloc, FifteenState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_bom".tr,
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
              _buildProductList(context),
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
  Widget _buildProductList(BuildContext context) {
    return Expanded(
      child: BlocSelector<FifteenBloc, FifteenState, FifteenModel?>(
        selector: (state) => state.fifteenModelObj,
        builder: (context, fifteenModelObj) {
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
            itemCount: fifteenModelObj?.productlist5ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist5ItemModel model =
                  fifteenModelObj?.productlist5ItemList[index] ??
                      Productlist5ItemModel();
              return Productlist5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
