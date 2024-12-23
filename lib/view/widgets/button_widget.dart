import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final String hint;
  final IconData icon;
  const CustomInputText({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber[50],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(icon),
          iconColor: const Color(0xFFF85E11),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
