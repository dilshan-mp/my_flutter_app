import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final EdgeInsets margin; // Margin parameter
  final String hintText; // Hint text parameter

  const CustomTextField(
      {super.key, required this.margin, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 36,
      margin: margin,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.grey.shade500),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xFFF7F7FC),
        ),
      ),
    );
  }
}
