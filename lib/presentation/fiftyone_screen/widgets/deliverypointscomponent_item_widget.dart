import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/deliverypointscomponent_item_model.dart';

// ignore: must_be_immutable
class DeliverypointscomponentItemWidget extends StatelessWidget {
  DeliverypointscomponentItemWidget(
    this.deliverypointscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliverypointscomponentItemModel deliverypointscomponentItemModelObj;

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
            imagePath: deliverypointscomponentItemModelObj?.iconButton,
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
                deliverypointscomponentItemModelObj.deliveryPoints!,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                deliverypointscomponentItemModelObj.duration!,
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
            deliverypointscomponentItemModelObj.price!,
            style: CustomTextStyles.bodyMediumGreenA40001_1,
          ),
        ),
      ],
    );
  }
}
