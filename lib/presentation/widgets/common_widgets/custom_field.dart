import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/core/theme/theme_color.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final int? maxLength;
  final String? hintText;
  final EdgeInsets? contentPadding;
  final void Function(String? value)? onSaved, onChanged;
  final Widget? prefix;
  final bool showCursor;
  final bool autofocus;
  final bool showErrorBorder;
  final TextAlign textAlign;
  final Alignment errorAlign, floatingAlign;

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String? value) validator;

  const CustomTextField({
    Key? key,
    this.controller,
    this.maxLength,
    this.onSaved,
    this.onChanged,
    this.prefix,
    this.showCursor = true,
    this.showErrorBorder = false,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.errorAlign = Alignment.centerRight,
    this.floatingAlign = Alignment.centerLeft,
    this.hintText,
    this.contentPadding,
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorText;
  bool hidePassword = true;

  bool get hasError => errorText != null;

  bool get showErrorBorder => widget.showErrorBorder && hasError;

  bool get isPasswordField =>
      widget.keyboardType == TextInputType.visiblePassword;

  void _onSaved(String? value) {
    value = value!.trim();
    widget.controller?.text = value;
    widget.onSaved?.call(value);
  }

  void _onChanged(String value) {
    if (widget.onChanged != null) {
      _runValidator(value);
      widget.onChanged!(value);
    }
  }

  String? _runValidator(String? value) {
    final error = widget.validator(value!.trim());
    setState(() {
      errorText = error;
    });
    return error;
  }

  void _togglePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 320.w,
      child: TextFormField(
        controller: widget.controller,
        textAlign: widget.textAlign,
        autofocus: widget.autofocus,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,

        style: context.theme.textTheme.bodySmall!.copyWith(
          fontSize: 14.sp,
        ),
        showCursor: widget.showCursor,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        textAlignVertical: TextAlignVertical.center,
        autovalidateMode: AutovalidateMode.disabled,
        // cursorColor: ,
        obscureText: isPasswordField && hidePassword,
        validator: _runValidator,
        onFieldSubmitted: _runValidator,
        onSaved: _onSaved,
        onChanged: _onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: Colors.grey.withOpacity(0.05),
          prefixIcon: widget.prefix,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          filled: true,
          counterText: '',
          border: primaryBorder(),
          focusedBorder: focusBorder(),
          focusedErrorBorder: focusBorder(),
          enabledBorder: primaryBorder(),
          errorBorder: showErrorBorder ? errorBorder() : null,
          suffixIcon: isPasswordField
              ? InkWell(
                  onTap: _togglePasswordVisibility,
                  child: Icon(
                    Icons.remove_red_eye_sharp,
                    size: 22.sp,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

class SecondaryTextField extends StatefulWidget {
  final TextEditingController? controller;
  final int? maxLength;
  final String? hintText;
  final EdgeInsets? contentPadding;
  final void Function(String? value)? onSaved, onChanged;
  final Widget? prefix;
  final bool showCursor;
  final bool autofocus;
  final bool showErrorBorder;
  final TextAlign textAlign;
  final Alignment errorAlign, floatingAlign;

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String? value) validator;

  const SecondaryTextField({
    Key? key,
    this.controller,
    this.maxLength,
    this.onSaved,
    this.onChanged,
    this.prefix,
    this.showCursor = true,
    this.showErrorBorder = false,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.errorAlign = Alignment.centerRight,
    this.floatingAlign = Alignment.centerLeft,
    this.hintText,
    this.contentPadding,
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
  }) : super(key: key);

  @override
  State<SecondaryTextField> createState() => _SecondaryTextFieldState();
}

class _SecondaryTextFieldState extends State<SecondaryTextField> {
  String? errorText;
  bool hidePassword = true;

  bool get hasError => errorText != null;

  bool get showErrorBorder => widget.showErrorBorder && hasError;

  bool get isPasswordField =>
      widget.keyboardType == TextInputType.visiblePassword;

  void _onSaved(String? value) {
    value = value!.trim();
    widget.controller?.text = value;
    widget.onSaved?.call(value);
  }

  void _onChanged(String value) {
    if (widget.onChanged != null) {
      _runValidator(value);
      widget.onChanged!(value);
    }
  }

  String? _runValidator(String? value) {
    final error = widget.validator(value!.trim());
    setState(() {
      errorText = error;
    });
    return error;
  }

  void _togglePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 320.w,
      child: TextFormField(
        controller: widget.controller,
        textAlign: widget.textAlign,
        autofocus: widget.autofocus,
        maxLength: widget.maxLength,
        maxLines: 20,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,

        style: context.theme.textTheme.bodySmall!.copyWith(
          fontSize: 14.sp,
        ),
        showCursor: widget.showCursor,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        textAlignVertical: TextAlignVertical.center,
        autovalidateMode: AutovalidateMode.disabled,
        // cursorColor: ,
        obscureText: isPasswordField && hidePassword,
        validator: _runValidator,
        onFieldSubmitted: _runValidator,
        onSaved: _onSaved,
        onChanged: _onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: Colors.grey.withOpacity(0.05),
          prefixIcon: widget.prefix,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          filled: true,
          counterText: '',
          border: primaryBorder(),
          focusedBorder: focusBorder(),
          focusedErrorBorder: focusBorder(),
          enabledBorder: primaryBorder(),
          errorBorder: showErrorBorder ? errorBorder() : null,
          suffixIcon: isPasswordField
              ? InkWell(
                  onTap: _togglePasswordVisibility,
                  child: Icon(
                    Icons.remove_red_eye_sharp,
                    size: 22.sp,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: const BorderSide(color: AppColor.primaryColor),
  );
}

OutlineInputBorder primaryBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(color: AppColor.accentColor.withOpacity(0.1)),
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: const BorderSide(color: AppColor.errorColor),
  );
}
