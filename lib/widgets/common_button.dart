// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  void Function()? onPressed;
  final Color? bgColor;
  final Color? txtColor;
  final double? height;

  CommonButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.bgColor,
      this.txtColor,
      this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 50,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(
                bgColor ?? AppColors.primary,
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: onPressed,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: TextStyle(
                    color: txtColor ?? Colors.white,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            )));
  }
}
