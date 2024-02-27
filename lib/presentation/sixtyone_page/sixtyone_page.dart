import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/sixtyone_bloc.dart';
import 'models/sixtyone_model.dart';
import 'models/userprofile2_item_model.dart';
import 'widgets/userprofile2_item_widget.dart';

// ignore_for_file: must_be_immutable
class SixtyonePage extends StatefulWidget {
  const SixtyonePage({Key? key})
      : super(
          key: key,
        );

  @override
  SixtyonePageState createState() => SixtyonePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SixtyoneBloc>(
      create: (context) => SixtyoneBloc(SixtyoneState(
        sixtyoneModelObj: SixtyoneModel(),
      ))
        ..add(SixtyoneInitialEvent()),
      child: SixtyonePage(),
    );
  }
}

class SixtyonePageState extends State<SixtyonePage>
    with AutomaticKeepAliveClientMixin<SixtyonePage> {
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
              SizedBox(height: 20.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<SixtyoneBloc, SixtyoneState, SixtyoneModel?>(
          selector: (state) => state.sixtyoneModelObj,
          builder: (context, sixtyoneModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: sixtyoneModelObj?.userprofile2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofile2ItemModel model =
                    sixtyoneModelObj?.userprofile2ItemList[index] ??
                        Userprofile2ItemModel();
                return Userprofile2ItemWidget(
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
