import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/fiftynine_bloc.dart';
import 'models/fiftynine_model.dart';
import 'models/productlist15_item_model.dart';
import 'widgets/productlist15_item_widget.dart';

// ignore_for_file: must_be_immutable
class FiftyninePage extends StatefulWidget {
  const FiftyninePage({Key? key})
      : super(
          key: key,
        );

  @override
  FiftyninePageState createState() => FiftyninePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FiftynineBloc>(
      create: (context) => FiftynineBloc(FiftynineState(
        fiftynineModelObj: FiftynineModel(),
      ))
        ..add(FiftynineInitialEvent()),
      child: FiftyninePage(),
    );
  }
}

class FiftyninePageState extends State<FiftyninePage>
    with AutomaticKeepAliveClientMixin<FiftyninePage> {
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
              _buildProductList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<FiftynineBloc, FiftynineState, FiftynineModel?>(
        selector: (state) => state.fiftynineModelObj,
        builder: (context, fiftynineModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 240.v,
              crossAxisCount: 2,
              mainAxisSpacing: 17.h,
              crossAxisSpacing: 17.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: fiftynineModelObj?.productlist15ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist15ItemModel model =
                  fiftynineModelObj?.productlist15ItemList[index] ??
                      Productlist15ItemModel();
              return Productlist15ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
