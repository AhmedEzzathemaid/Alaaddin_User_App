import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/sixtythree_bloc.dart';
import 'models/productcard2_item_model.dart';
import 'models/sixtythree_model.dart';
import 'widgets/productcard2_item_widget.dart';

// ignore_for_file: must_be_immutable
class SixtythreeBottomsheet extends StatelessWidget {
  const SixtythreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtythreeBloc>(
      create: (context) => SixtythreeBloc(SixtythreeState(
        sixtythreeModelObj: SixtythreeModel(),
      ))
        ..add(SixtythreeInitialEvent()),
      child: SixtythreeBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 72.h,
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_share_cart".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "msg_selected_products".tr,
                style: CustomTextStyles.titleMediumGray600_1,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          _buildProductCard(context),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            height: 55.v,
            text: "lbl_share".tr,
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<SixtythreeBloc, SixtythreeState, SixtythreeModel?>(
        selector: (state) => state.sixtythreeModelObj,
        builder: (context, sixtythreeModelObj) {
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
            itemCount: sixtythreeModelObj?.productcard2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcard2ItemModel model =
                  sixtythreeModelObj?.productcard2ItemList[index] ??
                      Productcard2ItemModel();
              return Productcard2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
