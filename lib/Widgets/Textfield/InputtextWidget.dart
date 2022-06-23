import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String hintText;
  final bool? isObscure;
  final bool? enabled;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    this.isObscure = false,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(suffixIcon);
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        obscureText: isObscure!,
        enabled: enabled!,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.brown,
              width: 1,
            ),
          ),
          iconColor: Colors.brown[500],
          focusColor: Colors.grey,
          prefixIcon: prefixIcon == Icons.cancel
              ? const Icon(null)
              : Icon(
                  prefixIcon,
                  color: Colors.brown[200],
                ),
          suffixIcon: suffixIcon == Icons.cancel
              ? const Icon(null)
              : Icon(
                  suffixIcon,
                  color: Colors.brown[200],
                ),
        ),
        cursorColor: Colors.brown[200],
        obscuringCharacter: '*',
      ),
    );
  }
}
