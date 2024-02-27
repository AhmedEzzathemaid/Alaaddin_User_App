import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import '../sixty_page/widgets/products_item_widget.dart';
import 'bloc/sixty_bloc.dart';
import 'models/products_item_model.dart';
import 'models/sixty_model.dart';
import 'models/storeinfo6_item_model.dart';
import 'widgets/storeinfo6_item_widget.dart';

// ignore_for_file: must_be_immutable
class SixtyPage extends StatelessWidget {
  const SixtyPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SixtyBloc>(
      create: (context) => SixtyBloc(SixtyState(
        sixtyModelObj: SixtyModel(),
      ))
        ..add(SixtyInitialEvent()),
      child: SixtyPage(),
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
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProducts(context),
              SizedBox(height: 19.v),
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
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgUserPrimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_favourite".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationIcon,
          margin: EdgeInsets.fromLTRB(18.h, 11.v, 18.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProducts(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SixtyBloc, SixtyState, SixtyModel?>(
        selector: (state) => state.sixtyModelObj,
        builder: (context, sixtyModelObj) {
          return Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(
              sixtyModelObj?.productsItemList.length ?? 0,
              (index) {
                ProductsItemModel model =
                    sixtyModelObj?.productsItemList[index] ??
                        ProductsItemModel();

                return ProductsItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<SixtyBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SixtyBloc, SixtyState, SixtyModel?>(
        selector: (state) => state.sixtyModelObj,
        builder: (context, sixtyModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: sixtyModelObj?.storeinfo6ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Storeinfo6ItemModel model =
                  sixtyModelObj?.storeinfo6ItemList[index] ??
                      Storeinfo6ItemModel();
              return Storeinfo6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
