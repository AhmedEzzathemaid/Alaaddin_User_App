import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_rating_bar.dart';
import 'bloc/fortyseven_bloc.dart';
import 'models/fortyseven_item_model.dart';
import 'models/fortyseven_model.dart';
import 'widgets/fortyseven_item_widget.dart';

class FortysevenScreen extends StatelessWidget {
  const FortysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FortysevenBloc>(
      create: (context) => FortysevenBloc(FortysevenState(
        fortysevenModelObj: FortysevenModel(),
      ))
        ..add(FortysevenInitialEvent()),
      child: FortysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_4_8".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          TextSpan(
                            text: "lbl_5".tr,
                            style: CustomTextStyles.headlineMediumff7a7f8a,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_overall_rating".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_574_ratings2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 11.v),
              Text(
                "msg_khaled_ahmed_1_jan".tr,
                style: CustomTextStyles.titleSmallGray600,
              ),
              SizedBox(height: 1.v),
              CustomRatingBar(
                initialRating: 5,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 293.h,
                margin: EdgeInsets.only(right: 35.h),
                child: Text(
                  "msg_an_amazing_fit".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildFortySeven(context),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 11.v),
              Text(
                "msg_khaled_ahmed_1_jan".tr,
                style: CustomTextStyles.titleSmallGray600,
              ),
              SizedBox(height: 1.v),
              CustomRatingBar(
                initialRating: 5,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 293.h,
                margin: EdgeInsets.only(right: 35.h),
                child: Text(
                  "msg_an_amazing_fit".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Divider(),
              SizedBox(height: 11.v),
              Text(
                "msg_khaled_ahmed_1_jan".tr,
                style: CustomTextStyles.titleSmallGray600,
              ),
              SizedBox(height: 1.v),
              CustomRatingBar(
                initialRating: 5,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 293.h,
                margin: EdgeInsets.only(right: 35.h),
                child: Text(
                  "msg_an_amazing_fit".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle22419,
                height: 55.adaptSize,
                width: 55.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 89.v),
              Divider(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_ratings_reviews".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return SizedBox(
      height: 55.v,
      child: BlocSelector<FortysevenBloc, FortysevenState, FortysevenModel?>(
        selector: (state) => state.fortysevenModelObj,
        builder: (context, fortysevenModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 209.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 9.h,
              );
            },
            itemCount: fortysevenModelObj?.fortysevenItemList.length ?? 0,
            itemBuilder: (context, index) {
              FortysevenItemModel model =
                  fortysevenModelObj?.fortysevenItemList[index] ??
                      FortysevenItemModel();
              return FortysevenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
