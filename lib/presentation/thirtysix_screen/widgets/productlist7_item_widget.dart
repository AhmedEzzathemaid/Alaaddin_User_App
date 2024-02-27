import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/productlist7_item_model.dart';

// ignore: must_be_immutable
class Productlist7ItemWidget extends StatelessWidget {
  Productlist7ItemWidget(
    this.productlist7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist7ItemModel productlist7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Column(
        children: [
          SizedBox(
            height: 190.v,
            width: 160.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: productlist7ItemModelObj?.productImage,
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
            productlist7ItemModelObj.bomberJackets!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 1.v),
          Text(
            productlist7ItemModelObj.price!,
            style: CustomTextStyles.titleMediumRed600SemiBold17,
          ),
        ],
      ),
    );
  }
}
