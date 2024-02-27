import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_rating_bar.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredtwenty_bloc.dart';
import 'models/onehundredtwenty_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredtwentyBottomsheet extends StatelessWidget {
  const OnehundredtwentyBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentyBloc>(
      create: (context) => OnehundredtwentyBloc(OnehundredtwentyState(
        onehundredtwentyModelObj: OnehundredtwentyModel(),
      ))
        ..add(OnehundredtwentyInitialEvent()),
      child: OnehundredtwentyBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 72.h,
            child: Divider(
              color: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_store_rating".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3073x73,
            height: 73.adaptSize,
            width: 73.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_el_nor_store".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          _buildRatingBar(context),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_add_comment".tr,
                style: CustomTextStyles.titleSmall15_1,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          BlocSelector<OnehundredtwentyBloc, OnehundredtwentyState,
              TextEditingController?>(
            selector: (state) => state.commentController,
            builder: (context, commentController) {
              return CustomTextFormField(
                controller: commentController,
                hintText: "msg_type_your_comment".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                maxLines: 8,
                borderDecoration: TextFormFieldStyleHelper.outlineGray,
                fillColor: appTheme.gray10003,
              );
            },
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            text: "lbl_add_rating".tr,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 78.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomRatingBar(
        initialRating: 4,
        itemSize: 24,
      ),
    );
  }
}
