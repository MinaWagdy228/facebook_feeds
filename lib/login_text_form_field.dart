import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  String hintText;
  Widget? suffixIcon;
  LoginTextFormField({required this.hintText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.grey, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.grey, width: 2)),
              filled: true,
              fillColor: Colors.white,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
              hintText: hintText,
              suffixIcon: suffixIcon),
        ),
      ),
    );
  }
}
