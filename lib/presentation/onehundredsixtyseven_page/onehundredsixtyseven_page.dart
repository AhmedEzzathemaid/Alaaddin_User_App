import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/onehundredsixtyseven_bloc.dart';
import 'models/onehundredsixtyseven_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredsixtysevenPage extends StatefulWidget {
  const OnehundredsixtysevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  OnehundredsixtysevenPageState createState() =>
      OnehundredsixtysevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredsixtysevenBloc>(
      create: (context) => OnehundredsixtysevenBloc(OnehundredsixtysevenState(
        onehundredsixtysevenModelObj: OnehundredsixtysevenModel(),
      ))
        ..add(OnehundredsixtysevenInitialEvent()),
      child: OnehundredsixtysevenPage(),
    );
  }
}

class OnehundredsixtysevenPageState extends State<OnehundredsixtysevenPage>
    with AutomaticKeepAliveClientMixin<OnehundredsixtysevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnehundredsixtysevenBloc, OnehundredsixtysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 171.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 81.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1000001271,
                          height: 113.v,
                          width: 106.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 42.h),
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "lbl_no_items_yet".tr,
                          style: CustomTextStyles.titleMedium19,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "msg_there_are_no_data".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
