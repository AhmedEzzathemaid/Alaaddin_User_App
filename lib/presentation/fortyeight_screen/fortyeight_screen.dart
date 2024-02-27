import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/fortyeight_bloc.dart';
import 'models/button_item_model.dart';
import 'models/fortyeight_model.dart';
import 'widgets/button_item_widget.dart';

class FortyeightScreen extends StatelessWidget {
  const FortyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortyeightBloc>(
      create: (context) => FortyeightBloc(FortyeightState(
        fortyeightModelObj: FortyeightModel(),
      ))
        ..add(FortyeightInitialEvent()),
      child: FortyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2196,
                    height: 321.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 61.v),
                  ),
                  _buildArrowDown(context),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 768.v,
                      width: double.maxFinite,
                      decoration: AppDecoration.fillBlack,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 10.v,
                              margin: EdgeInsets.only(bottom: 136.v),
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 5,
                                effect: ScrollingDotsEffect(
                                  spacing: 4,
                                  activeDotColor:
                                      theme.colorScheme.primary.withOpacity(1),
                                  dotColor: appTheme.gray40002,
                                  activeDotScale: 1.6666666666666667,
                                  dotHeight: 6.v,
                                  dotWidth: 6.h,
                                ),
                              ),
                            ),
                          ),
                          _buildButton(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(19.h, 1.v, 19.h, 722.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillGrayTL19,
                child: CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGrayTL19,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSupportHeart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return BlocBuilder<FortyeightBloc, FortyeightState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 697.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount: state.fortyeightModelObj?.buttonItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            ButtonItemModel model =
                state.fortyeightModelObj?.buttonItemList[index] ??
                    ButtonItemModel();
            return ButtonItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
