import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import '../models/products_item_model.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(
    this.productsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ProductsItemModel productsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        productsItemModelObj.products!,
        style: TextStyle(
          color: (productsItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.gray600,
          fontSize: 16.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (productsItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray20001,
      selectedColor: theme.colorScheme.primary.withOpacity(1),
      shape: (productsItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
