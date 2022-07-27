import 'package:flutter/material.dart';

class defaultFormFIeld extends StatelessWidget {
  TextEditingController controller;
  TextInputType keyboardType;
  ValueChanged<String>? onSubmit;
  ValueChanged<String>? onChange;
  VoidCallback? onTap;
  bool isPassword = false;
  FormFieldValidator<String>? validate;
  String? label;
  IconData? prefix;
  IconData? suffix;
  VoidCallback? suffixPressed;
  bool isClickable = true;

  defaultFormFIeld({
    Key? key,
    required this.controller,
    required this.keyboardType,
    this.onSubmit,
    this.onChange,
    this.onTap,
    bool isPassword = false,
    this.validate,
    required this.label,
    this.prefix,
    this.suffix,
    this.suffixPressed,
    bool isClickable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 975.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(41),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 17),
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: suffixPressed,
            icon: Icon(
              suffix,
            ),
          )
              : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
