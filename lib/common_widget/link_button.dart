import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? txtColor;

  const LinkButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Almarai',
          color: txtColor ?? Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
