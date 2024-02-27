import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_icon_button.dart';
import '../models/deliverypointscomponent1_item_model.dart';

// ignore: must_be_immutable
class Deliverypointscomponent1ItemWidget extends StatelessWidget {
  Deliverypointscomponent1ItemWidget(
    this.deliverypointscomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Deliverypointscomponent1ItemModel deliverypointscomponent1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillDeepOrange,
            child: CustomImageView(
              imagePath: deliverypointscomponent1ItemModelObj?.iconButton,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deliverypointscomponent1ItemModelObj.deliveryPointsText!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  deliverypointscomponent1ItemModelObj.within2DaysText!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 14.v,
            ),
            child: Text(
              deliverypointscomponent1ItemModelObj.plus50YERText!,
              style: CustomTextStyles.bodyMediumGreenA40001_1,
            ),
          ),
        ],
      ),
    );
  }
}
