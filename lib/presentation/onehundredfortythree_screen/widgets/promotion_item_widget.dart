import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/promotion_item_model.dart';

// ignore: must_be_immutable
class PromotionItemWidget extends StatelessWidget {
  PromotionItemWidget(
    this.promotionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PromotionItemModel promotionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup3050,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 104.v,
            width: 124.h,
            padding: EdgeInsets.symmetric(
              horizontal: 27.h,
              vertical: 20.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup3051,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_50".tr,
                            style: CustomTextStyles.headlineSmallDMSansffffffff,
                          ),
                          TextSpan(
                            text: "lbl_yer".tr,
                            style: CustomTextStyles.titleMediumDMSansffffffff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Text(
                      promotionItemModelObj.text2!,
                      style: CustomTextStyles.titleLargeDMSansWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 14.v,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  promotionItemModelObj.text3!,
                  style: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
                ),
                SizedBox(height: 3.v),
                Text(
                  promotionItemModelObj.text4!,
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
                SizedBox(height: 1.v),
                Text(
                  promotionItemModelObj.text5!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  promotionItemModelObj.text6!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 41.v,
              bottom: 35.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseWhiteA70028x28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
