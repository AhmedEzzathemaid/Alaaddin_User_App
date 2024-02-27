import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/ninetyone_bloc.dart';
import 'models/ninetyone_model.dart';
import 'models/ordersummary1_item_model.dart';
import 'widgets/ordersummary1_item_widget.dart';

// ignore_for_file: must_be_immutable
class NinetyonePage extends StatefulWidget {
  const NinetyonePage({Key? key})
      : super(
          key: key,
        );

  @override
  NinetyonePageState createState() => NinetyonePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NinetyoneBloc>(
      create: (context) => NinetyoneBloc(NinetyoneState(
        ninetyoneModelObj: NinetyoneModel(),
      ))
        ..add(NinetyoneInitialEvent()),
      child: NinetyonePage(),
    );
  }
}

class NinetyonePageState extends State<NinetyonePage>
    with AutomaticKeepAliveClientMixin<NinetyonePage> {
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
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<NinetyoneBloc, NinetyoneState, NinetyoneModel?>(
          selector: (state) => state.ninetyoneModelObj,
          builder: (context, ninetyoneModelObj) {
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
              itemCount: ninetyoneModelObj?.ordersummary1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Ordersummary1ItemModel model =
                    ninetyoneModelObj?.ordersummary1ItemList[index] ??
                        Ordersummary1ItemModel();
                return Ordersummary1ItemWidget(
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
