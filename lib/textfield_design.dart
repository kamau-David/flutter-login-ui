import 'package:flutter/material.dart';

class GlassTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final IconData? suffixIcon;
  const GlassTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(10),
      ),

      child: TextField(
        obscureText: obscureText,
        style: TextStyle(color: Colors.white),

        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white70),
          prefixIcon: Icon(icon, color: Colors.white),
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, color: Colors.white)
              : null,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}
