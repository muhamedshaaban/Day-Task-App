import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.iconText,
    required this.buttonColor,
    this.borderSide,
    required this.textColor,
  });
  final void Function() onPressed;
  final String iconText;
  final Color buttonColor;
  final BorderSide? borderSide;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: borderSide ?? const BorderSide(),
          ),
        ),
        child: Text(
          iconText,
          style: TextStyle(
              color: textColor, fontSize: 16, fontFamily: 'Inter-SemiBold'),
        ),
      ),
    );
  }
}
