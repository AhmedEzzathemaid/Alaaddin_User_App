import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import '../twelve_screen/widgets/arrowturnbackwardround_item_widget.dart';
import 'bloc/twelve_bloc.dart';
import 'models/arrowturnbackwardround_item_model.dart';
import 'models/twelve_model.dart';

class TwelveScreen extends StatelessWidget {
  const TwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TwelveBloc>(
      create: (context) => TwelveBloc(TwelveState(
        twelveModelObj: TwelveModel(),
      ))
        ..add(TwelveInitialEvent()),
      child: TwelveScreen(),
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
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<TwelveBloc, TwelveState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    borderDecoration: SearchViewStyleHelper.fillGray,
                  );
                },
              ),
              SizedBox(height: 15.v),
              _buildRecentlySearch(context),
              SizedBox(height: 12.v),
              _buildArrowturnbackwardround(context),
              SizedBox(height: 5.v),
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
  Widget _buildRecentlySearch(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recently_search".tr,
          style: CustomTextStyles.titleMediumSemiBold18,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "lbl_clear_all".tr,
            style: theme.textTheme.bodyMedium!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildArrowturnbackwardround(BuildContext context) {
    return BlocSelector<TwelveBloc, TwelveState, TwelveModel?>(
      selector: (state) => state.twelveModelObj,
      builder: (context, twelveModelObj) {
        return Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
            twelveModelObj?.arrowturnbackwardroundItemList.length ?? 0,
            (index) {
              ArrowturnbackwardroundItemModel model =
                  twelveModelObj?.arrowturnbackwardroundItemList[index] ??
                      ArrowturnbackwardroundItemModel();

              return ArrowturnbackwardroundItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<TwelveBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }
}
