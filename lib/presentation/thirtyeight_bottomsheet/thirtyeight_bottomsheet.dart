import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_search_view.dart';
import 'bloc/thirtyeight_bloc.dart';
import 'models/storeinfo5_item_model.dart';
import 'models/thirtyeight_model.dart';
import 'widgets/storeinfo5_item_widget.dart';

// ignore_for_file: must_be_immutable
class ThirtyeightBottomsheet extends StatelessWidget {
  const ThirtyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtyeightBloc>(
      create: (context) => ThirtyeightBloc(ThirtyeightState(
        thirtyeightModelObj: ThirtyeightModel(),
      ))
        ..add(ThirtyeightInitialEvent()),
      child: ThirtyeightBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 7.v,
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
          SizedBox(height: 15.v),
          BlocSelector<ThirtyeightBloc, ThirtyeightState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "lbl_el".tr,
                contentPadding: EdgeInsets.symmetric(vertical: 9.v),
              );
            },
          ),
          SizedBox(height: 10.v),
          BlocSelector<ThirtyeightBloc, ThirtyeightState, ThirtyeightModel?>(
            selector: (state) => state.thirtyeightModelObj,
            builder: (context, thirtyeightModelObj) {
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
                itemCount: thirtyeightModelObj?.storeinfo5ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Storeinfo5ItemModel model =
                      thirtyeightModelObj?.storeinfo5ItemList[index] ??
                          Storeinfo5ItemModel();
                  return Storeinfo5ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
