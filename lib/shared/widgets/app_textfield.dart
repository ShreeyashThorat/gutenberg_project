import 'package:flutter/material.dart';

import '../../core/themes/theme_extention.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? inputType;
  final Function(String)? onChange;
  final int? maxLength;
  final bool? isObscure;
  final Widget? preffix;
  final Widget? suffix;
  final int maxLines;
  final bool readOnly;
  final double? radius;
  final double? verticalPadding;
  final bool autofocus;
  final Function()? onTap;
  final Color? fillColor;
  final bool? filled;
  final bool? focusedBorder;
  final String? Function(String?)? validator;
  final Function(String)? onSubmit;
  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChange,
    this.maxLength,
    this.isObscure = false,
    this.inputType,
    this.maxLines = 1,
    this.suffix,
    this.preffix,
    this.radius,
    this.verticalPadding,
    this.onTap,
    this.autofocus = false,
    this.readOnly = false,
    this.fillColor,
    this.filled,
    this.focusedBorder,
    this.validator,
    this.onSubmit,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscure = false;

  @override
  void initState() {
    setState(() {
      obscure = widget.isObscure!;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: widget.maxLength,
      controller: widget.controller,
      obscureText: obscure,
      keyboardType: widget.inputType,
      onChanged: widget.onChange,
      maxLines: widget.isObscure == true ? 1 : widget.maxLines,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color:
              Theme.of(context).extension<GreyShades>()?.medium ?? Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 6)),
          borderSide: BorderSide(
            color:
                widget.filled == true
                    ? Colors.transparent
                    : Theme.of(context)
                            .extension<GreyShades>()
                            ?.light
                            .withValues(alpha: 0.7) ??
                        Colors.grey.withValues(alpha: 0.7),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 6)),
          borderSide: BorderSide(
            color:
                widget.filled == true
                    ? Colors.transparent
                    : Theme.of(context)
                            .extension<GreyShades>()
                            ?.light
                            .withValues(alpha: 0.7) ??
                        Colors.grey.withValues(alpha: 0.7),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 6)),
          borderSide: BorderSide(
            color:
                widget.focusedBorder == true
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 6)),
          borderSide: BorderSide(
            color:
                widget.filled == true
                    ? Colors.transparent
                    : Theme.of(context).extension<SemanticColors>()?.error ??
                        Colors.red,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 6)),
          borderSide: BorderSide(
            color:
                widget.filled == true
                    ? Colors.transparent
                    : Theme.of(context).extension<SemanticColors>()?.error ??
                        Colors.red,
            width: 1,
          ),
        ),
        fillColor: widget.fillColor ?? Theme.of(context).canvasColor,
        filled: widget.filled,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: widget.verticalPadding ?? 15,
          horizontal: 15,
        ),
        prefixIcon: widget.preffix,
        suffixIcon:
            widget.isObscure == true
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  highlightColor: Colors.transparent,
                  icon:
                      obscure == true
                          ? Icon(
                            Icons.visibility_rounded,
                            color:
                                Theme.of(
                                  context,
                                ).extension<GreyShades>()?.medium ??
                                Colors.grey,
                            size: 22,
                          )
                          : Icon(
                            Icons.visibility_off_rounded,
                            color:
                                Theme.of(
                                  context,
                                ).extension<GreyShades>()?.medium ??
                                Colors.grey,
                            size: 22,
                          ),
                )
                : widget.suffix,
      ),
      cursorColor: Colors.black,
      cursorHeight: 18,
      cursorWidth: 1,
      onTap: widget.onTap,
      onSubmitted: widget.onSubmit,
    );
  }
}

bool validatePhone(String phone) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(patttern);
  return regExp.hasMatch(phone);
}

bool validateEmail(String email) {
  RegExp emailReg = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
  );

  return emailReg.hasMatch(email);
}

bool validatePassword(String password) {
  RegExp passwordRegExp = RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{9,}$');
  return passwordRegExp.hasMatch(password);
}

bool containsSpecialCharOrNumber(String input) {
  RegExp regExp = RegExp(r'[!@#\$%^&*(),.?":{}|<>0-9]');
  return regExp.hasMatch(input);
}
