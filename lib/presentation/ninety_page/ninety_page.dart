import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/ninety_bloc.dart';
import 'models/ninety_model.dart';
import 'models/orderdetails1_item_model.dart';
import 'widgets/orderdetails1_item_widget.dart';

// ignore_for_file: must_be_immutable
class NinetyPage extends StatefulWidget {
  const NinetyPage({Key? key})
      : super(
          key: key,
        );

  @override
  NinetyPageState createState() => NinetyPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NinetyBloc>(
      create: (context) => NinetyBloc(NinetyState(
        ninetyModelObj: NinetyModel(),
      ))
        ..add(NinetyInitialEvent()),
      child: NinetyPage(),
    );
  }
}

class NinetyPageState extends State<NinetyPage>
    with AutomaticKeepAliveClientMixin<NinetyPage> {
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
        child: BlocSelector<NinetyBloc, NinetyState, NinetyModel?>(
          selector: (state) => state.ninetyModelObj,
          builder: (context, ninetyModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.v),
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
              itemCount: ninetyModelObj?.orderdetails1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Orderdetails1ItemModel model =
                    ninetyModelObj?.orderdetails1ItemList[index] ??
                        Orderdetails1ItemModel();
                return Orderdetails1ItemWidget(
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
