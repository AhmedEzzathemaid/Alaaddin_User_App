import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        border: Border.all(
          color: appTheme.gray30006,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
                bottom: 12.v,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  right: 7.h,
                  bottom: 3.v,
                ),
                child: Text(
                  "+${country.phoneCode}",
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 272.h,
                controller: controller,
                hintText: "lbl_123_456_789".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                suffix: Container(
                  margin: EdgeInsets.only(
                    left: 30.h,
                    right: 3.h,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHeroiconsdevicephonemobile,
                    height: 20.v,
                    width: 24.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 20.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 1.v),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
