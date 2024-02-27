import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_elevated_button.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';
import 'bloc/onehundredtwentytwo_bloc.dart';
import 'models/onehundredtwentytwo_model.dart';

// ignore_for_file: must_be_immutable
class OnehundredtwentytwoBottomsheet extends StatelessWidget {
  const OnehundredtwentytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnehundredtwentytwoBloc>(
      create: (context) => OnehundredtwentytwoBloc(OnehundredtwentytwoState(
        onehundredtwentytwoModelObj: OnehundredtwentytwoModel(),
      ))
        ..add(OnehundredtwentytwoInitialEvent()),
      child: OnehundredtwentytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 17.v,
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
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_add_your_question".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_add_question".tr,
                style: CustomTextStyles.titleSmall15_1,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          BlocSelector<OnehundredtwentytwoBloc, OnehundredtwentytwoState,
              TextEditingController?>(
            selector: (state) => state.questionThreeController,
            builder: (context, questionThreeController) {
              return CustomTextFormField(
                controller: questionThreeController,
                hintText: "msg_type_your_question".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                maxLines: 8,
                borderDecoration: TextFormFieldStyleHelper.outlineGray,
                fillColor: appTheme.gray10003,
              );
            },
          ),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            text: "lbl_add_question".tr,
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
