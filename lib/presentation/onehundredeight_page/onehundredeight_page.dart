import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/onehundredeight_bloc.dart';
import 'models/onehundredeight_model.dart';
import 'models/ordersummary2_item_model.dart';
import 'widgets/ordersummary2_item_widget.dart';

// ignore_for_file: must_be_immutable
class OnehundredeightPage extends StatefulWidget {
  const OnehundredeightPage({Key? key})
      : super(
          key: key,
        );

  @override
  OnehundredeightPageState createState() => OnehundredeightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredeightBloc>(
      create: (context) => OnehundredeightBloc(OnehundredeightState(
        onehundredeightModelObj: OnehundredeightModel(),
      ))
        ..add(OnehundredeightInitialEvent()),
      child: OnehundredeightPage(),
    );
  }
}

class OnehundredeightPageState extends State<OnehundredeightPage>
    with AutomaticKeepAliveClientMixin<OnehundredeightPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildOrderSummary(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<OnehundredeightBloc, OnehundredeightState,
          OnehundredeightModel?>(
        selector: (state) => state.onehundredeightModelObj,
        builder: (context, onehundredeightModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.5.v),
                child: SizedBox(
                  width: 305.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray30003,
                  ),
                ),
              );
            },
            itemCount:
                onehundredeightModelObj?.ordersummary2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Ordersummary2ItemModel model =
                  onehundredeightModelObj?.ordersummary2ItemList[index] ??
                      Ordersummary2ItemModel();
              return Ordersummary2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
