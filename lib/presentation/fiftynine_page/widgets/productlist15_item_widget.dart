import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/productlist15_item_model.dart';

// ignore: must_be_immutable
class Productlist15ItemWidget extends StatelessWidget {
  Productlist15ItemWidget(
    this.productlist15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist15ItemModel productlist15ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190.v,
          width: 160.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: productlist15ItemModelObj?.productImage,
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
                    imagePath: ImageConstant.imgSupportHeartRed600,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          productlist15ItemModelObj.bomberJackets!,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 1.v),
        Text(
          productlist15ItemModelObj.price!,
          style: CustomTextStyles.titleMediumRed600SemiBold17,
        ),
      ],
    );
  }
}
