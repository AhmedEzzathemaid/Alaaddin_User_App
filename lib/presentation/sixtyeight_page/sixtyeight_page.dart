import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/sixtyeight_bloc.dart';
import 'models/paymentoption_item_model.dart';
import 'models/sixtyeight_model.dart';
import 'models/viewhierarchy2_item_model.dart';
import 'widgets/paymentoption_item_widget.dart';
import 'widgets/viewhierarchy2_item_widget.dart';

// ignore_for_file: must_be_immutable
class SixtyeightPage extends StatefulWidget {
  const SixtyeightPage({Key? key})
      : super(
          key: key,
        );

  @override
  SixtyeightPageState createState() => SixtyeightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SixtyeightBloc>(
      create: (context) => SixtyeightBloc(SixtyeightState(
        sixtyeightModelObj: SixtyeightModel(),
      ))
        ..add(SixtyeightInitialEvent()),
      child: SixtyeightPage(),
    );
  }
}

class SixtyeightPageState extends State<SixtyeightPage>
    with AutomaticKeepAliveClientMixin<SixtyeightPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDeliveryPoint(context),
                      SizedBox(height: 12.v),
                      Divider(
                        indent: 1.h,
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_payment_method".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildViewHierarchy(context),
                      SizedBox(height: 10.v),
                      _buildPaymentOption(context),
                      SizedBox(height: 13.v),
                      CustomElevatedButton(
                        text: "lbl_checkout".tr,
                        margin: EdgeInsets.only(left: 1.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryPoint(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup118,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_delivery_point".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_choose_the_point".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary13x6,
            height: 13.v,
            width: 6.h,
            margin: EdgeInsets.symmetric(vertical: 18.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return BlocSelector<SixtyeightBloc, SixtyeightState, SixtyeightModel?>(
      selector: (state) => state.sixtyeightModelObj,
      builder: (context, sixtyeightModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 6.v,
            );
          },
          itemCount: sixtyeightModelObj?.viewhierarchy2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Viewhierarchy2ItemModel model =
                sixtyeightModelObj?.viewhierarchy2ItemList[index] ??
                    Viewhierarchy2ItemModel();
            return Viewhierarchy2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPaymentOption(BuildContext context) {
    return BlocSelector<SixtyeightBloc, SixtyeightState, SixtyeightModel?>(
      selector: (state) => state.sixtyeightModelObj,
      builder: (context, sixtyeightModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 6.v,
            );
          },
          itemCount: sixtyeightModelObj?.paymentoptionItemList.length ?? 0,
          itemBuilder: (context, index) {
            PaymentoptionItemModel model =
                sixtyeightModelObj?.paymentoptionItemList[index] ??
                    PaymentoptionItemModel();
            return PaymentoptionItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
