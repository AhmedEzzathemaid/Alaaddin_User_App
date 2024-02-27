import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/navigationmenu1_item_model.dart';
import '../models/widget1_item_model.dart';
import '../models/widget_item_model.dart';
import '../widgets/widget1_item_widget.dart';
import '../widgets/widget_item_widget.dart';

// ignore: must_be_immutable
class Navigationmenu1ItemWidget extends StatelessWidget {
  Navigationmenu1ItemWidget(
    this.navigationmenu1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Navigationmenu1ItemModel navigationmenu1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 79.v,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 34.h,
                    );
                  },
                  itemCount:
                      navigationmenu1ItemModelObj.widgetItemList?.length ?? 0,
                  itemBuilder: (context, index) {
                    WidgetItemModel model =
                        navigationmenu1ItemModelObj.widgetItemList?[index] ??
                            WidgetItemModel();
                    return WidgetItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: Column(
                children: [
                  Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevisionWhiteA700,
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_furniture".tr,
                    style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.greenA700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: AppDecoration.fillGreenA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 19.adaptSize,
                            width: 19.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.greenA400,
                              borderRadius: BorderRadius.circular(
                                9.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUpGreenA700,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup31x31,
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_toys".tr,
                  style: CustomTextStyles.bodyMediumOnSecondaryContainer13,
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 80.v,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 34.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 34.h,
                    );
                  },
                  itemCount:
                      navigationmenu1ItemModelObj.widget1ItemList?.length ?? 0,
                  itemBuilder: (context, index) {
                    Widget1ItemModel model =
                        navigationmenu1ItemModelObj.widget1ItemList?[index] ??
                            Widget1ItemModel();
                    return Widget1ItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
