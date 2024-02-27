import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 17,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? theme.textTheme.bodyMedium,
        hintStyle: hintStyle ?? theme.textTheme.bodyMedium,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 32.h,
          fieldWidth: 32.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(4.h),
          inactiveColor: appTheme.gray20004,
          activeColor: appTheme.gray20004,
          inactiveFillColor: appTheme.gray10001,
          activeFillColor: appTheme.gray10001,
          selectedColor: appTheme.gray30006,
          selectedFillColor: appTheme.gray10003,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
