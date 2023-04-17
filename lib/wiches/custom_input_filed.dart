import 'package:flutter/material.dart';

class CustomInputFiled extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputFiled({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
     this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) {
          print('value');
        },
        validator: (value) {
          if (value == null) return 'este  campo no es requierido';
          return value.length < 3 ? 'Minimo 3 letas' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: '3 caracteres',
          // prefixIcon: Icon(Icons.verified_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
          //   border: OutlineInputBorder(
          //  borderRadius: BorderRadius.only(
          //      bottomLeft: Radius.circular(10),
          //        topRight: Radius.circular(10)

          //   )
        ));
  }
}
