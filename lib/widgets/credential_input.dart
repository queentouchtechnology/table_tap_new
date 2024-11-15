import 'package:flutter/material.dart';

class CredentialInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final IconData icon;
  const CredentialInput({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide.none,
      ),
      child: TextFormField(
        enableSuggestions: false,
        autocorrect: false,
        keyboardType:
            isPassword ? TextInputType.text : TextInputType.emailAddress,
        obscureText: isPassword,
        style: const TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.normal,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 0, right: 10),
            child: Icon(
              icon,
              color: Colors.black,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
