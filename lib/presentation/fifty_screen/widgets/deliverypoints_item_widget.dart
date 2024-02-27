import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/deliverypoints_item_model.dart';

// ignore: must_be_immutable
class DeliverypointsItemWidget extends StatelessWidget {
  DeliverypointsItemWidget(
    this.deliverypointsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliverypointsItemModel deliverypointsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 49.adaptSize,
          width: 49.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillDeepOrange,
          child: CustomImageView(
            imagePath: deliverypointsItemModelObj?.icon,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                deliverypointsItemModelObj.deliveryPoints!,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                deliverypointsItemModelObj.duration!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 17.v,
            bottom: 13.v,
          ),
          child: Text(
            deliverypointsItemModelObj.additionalText!,
            style: CustomTextStyles.bodyMediumGreenA40001_1,
          ),
        ),
      ],
    );
  }
}
