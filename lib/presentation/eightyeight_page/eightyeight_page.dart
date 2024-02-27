import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/eightyeight_bloc.dart';
import 'models/eightyeight_model.dart';
import 'models/orderdetails_item_model.dart';
import 'widgets/orderdetails_item_widget.dart';

// ignore_for_file: must_be_immutable
class EightyeightPage extends StatefulWidget {
  const EightyeightPage({Key? key})
      : super(
          key: key,
        );

  @override
  EightyeightPageState createState() => EightyeightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EightyeightBloc>(
      create: (context) => EightyeightBloc(EightyeightState(
        eightyeightModelObj: EightyeightModel(),
      ))
        ..add(EightyeightInitialEvent()),
      child: EightyeightPage(),
    );
  }
}

class EightyeightPageState extends State<EightyeightPage>
    with AutomaticKeepAliveClientMixin<EightyeightPage> {
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
              _buildOrderDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            BlocSelector<EightyeightBloc, EightyeightState, EightyeightModel?>(
          selector: (state) => state.eightyeightModelObj,
          builder: (context, eightyeightModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0.v),
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
              itemCount: eightyeightModelObj?.orderdetailsItemList.length ?? 0,
              itemBuilder: (context, index) {
                OrderdetailsItemModel model =
                    eightyeightModelObj?.orderdetailsItemList[index] ??
                        OrderdetailsItemModel();
                return OrderdetailsItemWidget(
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
