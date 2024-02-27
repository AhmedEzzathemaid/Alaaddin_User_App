import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/productlist3_item_model.dart';

// ignore: must_be_immutable
class Productlist3ItemWidget extends StatelessWidget {
  Productlist3ItemWidget(
    this.productlist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist3ItemModel productlist3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            children: [
              SizedBox(
                height: 190.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: productlist3ItemModelObj?.productImage,
                      height: 190.v,
                      width: 160.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10.h, 5.v, 5.h, 155.v),
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
                                productlist3ItemModelObj.productTitle!,
                                style: theme.textTheme.labelMedium,
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
                productlist3ItemModelObj.categoryTitle!,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 1.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    productlist3ItemModelObj.price1!,
                    style: CustomTextStyles.titleMediumRed600SemiBold17,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      productlist3ItemModelObj.price2!,
                      style: CustomTextStyles.titleMediumGray60017.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
