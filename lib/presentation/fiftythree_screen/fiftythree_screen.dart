import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/fiftythree_bloc.dart';
import 'models/fiftythree_model.dart';
import 'models/productlist14_item_model.dart';
import 'widgets/productlist14_item_widget.dart';

class FiftythreeScreen extends StatelessWidget {
  const FiftythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiftythreeBloc>(
      create: (context) => FiftythreeBloc(FiftythreeState(
        fiftythreeModelObj: FiftythreeModel(),
      ))
        ..add(FiftythreeInitialEvent()),
      child: FiftythreeScreen(),
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
              SizedBox(height: 20.v),
              _buildProductList(context),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: _buildCompare(context),
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
        text: "lbl_compare_list".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<FiftythreeBloc, FiftythreeState, FiftythreeModel?>(
        selector: (state) => state.fiftythreeModelObj,
        builder: (context, fiftythreeModelObj) {
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
            itemCount: fiftythreeModelObj?.productlist14ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist14ItemModel model =
                  fiftythreeModelObj?.productlist14ItemList[index] ??
                      Productlist14ItemModel();
              return Productlist14ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCompare(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_compare".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 32.v,
      ),
    );
  }
}
