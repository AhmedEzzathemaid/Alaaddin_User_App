import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'bloc/sixtyfour_bloc.dart';
import 'models/productcard3_item_model.dart';
import 'models/sixtyfour_model.dart';
import 'widgets/productcard3_item_widget.dart';

class SixtyfourScreen extends StatelessWidget {
  const SixtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtyfourBloc>(
      create: (context) => SixtyfourBloc(SixtyfourState(
        sixtyfourModelObj: SixtyfourModel(),
      ))
        ..add(SixtyfourInitialEvent()),
      child: SixtyfourScreen(),
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
            horizontal: 18.h,
            vertical: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_products".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 13.v),
              _buildProductCard(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddToCart(context),
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
        text: "lbl_shared_order".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<SixtyfourBloc, SixtyfourState, SixtyfourModel?>(
          selector: (state) => state.sixtyfourModelObj,
          builder: (context, sixtyfourModelObj) {
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
              itemCount: sixtyfourModelObj?.productcard3ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcard3ItemModel model =
                    sixtyfourModelObj?.productcard3ItemList[index] ??
                        Productcard3ItemModel();
                return Productcard3ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "lbl_add_to_cart".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 34.v,
      ),
    );
  }
}
