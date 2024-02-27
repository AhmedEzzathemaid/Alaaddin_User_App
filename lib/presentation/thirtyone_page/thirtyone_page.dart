import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/thirtyone_bloc.dart';
import 'models/productlist6_item_model.dart';
import 'models/thirtyone_model.dart';
import 'widgets/productlist6_item_widget.dart';

// ignore_for_file: must_be_immutable
class ThirtyonePage extends StatefulWidget {
  const ThirtyonePage({Key? key})
      : super(
          key: key,
        );

  @override
  ThirtyonePageState createState() => ThirtyonePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ThirtyoneBloc>(
      create: (context) => ThirtyoneBloc(ThirtyoneState(
        thirtyoneModelObj: ThirtyoneModel(),
      ))
        ..add(ThirtyoneInitialEvent()),
      child: ThirtyonePage(),
    );
  }
}

class ThirtyonePageState extends State<ThirtyonePage>
    with AutomaticKeepAliveClientMixin<ThirtyonePage> {
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
              _buildProductList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<ThirtyoneBloc, ThirtyoneState, ThirtyoneModel?>(
          selector: (state) => state.thirtyoneModelObj,
          builder: (context, thirtyoneModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 240.v,
                crossAxisCount: 2,
                mainAxisSpacing: 17.h,
                crossAxisSpacing: 17.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: thirtyoneModelObj?.productlist6ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist6ItemModel model =
                    thirtyoneModelObj?.productlist6ItemList[index] ??
                        Productlist6ItemModel();
                return Productlist6ItemWidget(
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
