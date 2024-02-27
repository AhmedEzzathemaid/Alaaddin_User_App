import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import 'bloc/three_bloc.dart';
import 'models/three_model.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThreeBloc>(
      create: (context) => ThreeBloc(ThreeState(
        threeModelObj: ThreeModel(),
      ))
        ..add(ThreeInitialEvent()),
      child: ThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreeBloc, ThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 44.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup2,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 73.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1572,
                            height: 284.v,
                            width: 351.h,
                          ),
                          SizedBox(height: 48.v),
                          SizedBox(
                            width: 211.h,
                            child: Text(
                              "msg_confirm_your_purchase".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Container(
                            width: 331.h,
                            margin: EdgeInsets.only(
                              left: 10.h,
                              right: 9.h,
                            ),
                            child: Text(
                              "msg_it_is_a_long_established".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray600.copyWith(
                                height: 1.38,
                              ),
                            ),
                          ),
                          SizedBox(height: 49.v),
                          CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.15,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPath39635,
                      height: 89.v,
                      width: 108.h,
                      alignment: Alignment.topLeft,
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
