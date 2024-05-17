import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController textCtrl;
  final String label;
  final String hintText;

  const CommonTextField(
      {super.key,
      required this.textCtrl,
      required this.label,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
              color: AppColors.black),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: textCtrl,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey, width: 0.3),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
