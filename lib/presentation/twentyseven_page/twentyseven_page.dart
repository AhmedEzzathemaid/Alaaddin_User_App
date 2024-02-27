import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/twentyseven_bloc.dart';
import 'models/twentyseven_model.dart';

// ignore_for_file: must_be_immutable
class TwentysevenPage extends StatefulWidget {
  const TwentysevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwentysevenPageState createState() => TwentysevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TwentysevenBloc>(
      create: (context) => TwentysevenBloc(TwentysevenState(
        twentysevenModelObj: TwentysevenModel(),
      ))
        ..add(TwentysevenInitialEvent()),
      child: TwentysevenPage(),
    );
  }
}

class TwentysevenPageState extends State<TwentysevenPage>
    with AutomaticKeepAliveClientMixin<TwentysevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TwentysevenBloc, TwentysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.h),
                      child: Column(
                        children: [
                          _buildSupportHeart1(
                            context,
                            image: ImageConstant.imgRectangle22426190x160,
                            bomberJackets: "lbl_bomber_jackets".tr,
                            price: "lbl_49_0_yer".tr,
                            image1: ImageConstant.imgRectangle22426,
                            widget: "lbl_20".tr,
                            bomberJackets1: "lbl_bomber_jackets".tr,
                            price1: "lbl_30_0_yer".tr,
                            price2: "lbl_49_9yer".tr,
                          ),
                          SizedBox(height: 20.v),
                          _buildWidget2(context),
                          SizedBox(height: 20.v),
                          _buildSupportHeart1(
                            context,
                            image: ImageConstant.imgRectangle224264,
                            bomberJackets: "lbl_bomber_jackets".tr,
                            price: "lbl_49_0_yer".tr,
                            image1: ImageConstant.imgRectangle224263,
                            widget: "lbl_20".tr,
                            bomberJackets1: "lbl_bomber_jackets".tr,
                            price1: "lbl_30_0_yer".tr,
                            price2: "lbl_49_9yer".tr,
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
      },
    );
  }

  /// Section Widget
  Widget _buildWidget2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.h),
          child: _buildWidget(
            context,
            widget: "lbl_20".tr,
            bomberJackets: "lbl_bomber_jackets".tr,
            price: "lbl_30_0_yer".tr,
            price1: "lbl_49_9yer".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: _buildSupportHeart(
            context,
            text: "lbl_bomber_jackets".tr,
            price: "lbl_49_0_yer".tr,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String bomberJackets,
    required String price,
    required String price1,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 190.v,
          width: 160.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle224261,
                height: 190.v,
                width: 160.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 145.h,
                  margin: EdgeInsets.fromLTRB(10.h, 5.v, 5.h, 155.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 44.h,
                        margin: EdgeInsets.symmetric(vertical: 5.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          widget,
                          style: theme.textTheme.labelMedium!.copyWith(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSupportHeart,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          bomberJackets,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        SizedBox(height: 1.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              price,
              style: CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
                color: appTheme.red600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                price1,
                style: CustomTextStyles.titleMediumGray60017.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: appTheme.gray600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSupportHeart(
    BuildContext context, {
    required String text,
    required String price,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 190.v,
          width: 160.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle224262,
                height: 190.v,
                width: 160.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  right: 5.h,
                ),
                child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillWhiteA,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSupportHeart,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          text,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        SizedBox(height: 1.v),
        Text(
          price,
          style: CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
            color: appTheme.red600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSupportHeart1(
    BuildContext context, {
    required String image,
    required String bomberJackets,
    required String price,
    required String image1,
    required String widget,
    required String bomberJackets1,
    required String price1,
    required String price2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.h),
          child: Column(
            children: [
              SizedBox(
                height: 190.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: image,
                      height: 190.v,
                      width: 160.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        right: 5.h,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSupportHeart,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                bomberJackets,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                price,
                style: CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
                  color: appTheme.red600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Column(
            children: [
              SizedBox(
                height: 190.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: image1,
                      height: 190.v,
                      width: 160.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 145.h,
                        margin: EdgeInsets.fromLTRB(10.h, 5.v, 5.h, 155.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 44.h,
                              margin: EdgeInsets.symmetric(vertical: 5.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.outlineWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                widget,
                                style: theme.textTheme.labelMedium!.copyWith(
                                  color: appTheme.whiteA700,
                                ),
                              ),
                            ),
                            CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSupportHeart,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                bomberJackets1,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              SizedBox(height: 1.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price1,
                    style:
                        CustomTextStyles.titleMediumRed600SemiBold17.copyWith(
                      color: appTheme.red600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      price2,
                      style: CustomTextStyles.titleMediumGray60017.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: appTheme.gray600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
