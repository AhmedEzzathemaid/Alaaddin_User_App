import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/eightynine_bloc.dart';
import 'models/eightynine_model.dart';
import 'models/ordersummary_item_model.dart';
import 'widgets/ordersummary_item_widget.dart';

// ignore_for_file: must_be_immutable
class EightyninePage extends StatefulWidget {
  const EightyninePage({Key? key})
      : super(
          key: key,
        );

  @override
  EightyninePageState createState() => EightyninePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EightynineBloc>(
      create: (context) => EightynineBloc(EightynineState(
        eightynineModelObj: EightynineModel(),
      ))
        ..add(EightynineInitialEvent()),
      child: EightyninePage(),
    );
  }
}

class EightyninePageState extends State<EightyninePage>
    with AutomaticKeepAliveClientMixin<EightyninePage> {
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
              SizedBox(height: 16.v),
              _buildOrderSummary(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<EightynineBloc, EightynineState, EightynineModel?>(
          selector: (state) => state.eightynineModelObj,
          builder: (context, eightynineModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.5.v),
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
              itemCount: eightynineModelObj?.ordersummaryItemList.length ?? 0,
              itemBuilder: (context, index) {
                OrdersummaryItemModel model =
                    eightynineModelObj?.ordersummaryItemList[index] ??
                        OrdersummaryItemModel();
                return OrdersummaryItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
