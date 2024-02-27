import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/nineteen_bloc.dart';
import 'models/nineteen_model.dart';
import 'models/productcard_item_model.dart';
import 'widgets/productcard_item_widget.dart';

// ignore_for_file: must_be_immutable
class NineteenPage extends StatefulWidget {
  const NineteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  NineteenPageState createState() => NineteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NineteenBloc>(
      create: (context) => NineteenBloc(NineteenState(
        nineteenModelObj: NineteenModel(),
      ))
        ..add(NineteenInitialEvent()),
      child: NineteenPage(),
    );
  }
}

class NineteenPageState extends State<NineteenPage>
    with AutomaticKeepAliveClientMixin<NineteenPage> {
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
              SizedBox(height: 12.v),
              _buildProductCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<NineteenBloc, NineteenState, NineteenModel?>(
          selector: (state) => state.nineteenModelObj,
          builder: (context, nineteenModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: nineteenModelObj?.productcardItemList.length ?? 0,
              itemBuilder: (context, index) {
                ProductcardItemModel model =
                    nineteenModelObj?.productcardItemList[index] ??
                        ProductcardItemModel();
                return ProductcardItemWidget(
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
