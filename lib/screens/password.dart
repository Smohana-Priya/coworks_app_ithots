import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';
import '../utils/app_images.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final TextEditingController _pswrdCntrl = TextEditingController();

  @override
  void dispose() {
    _pswrdCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Image.asset(AppImages.logo),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppConst.confirmPswrd,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    AppConst.profileDetails,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CommonTextField(
                    textCtrl: _pswrdCntrl,
                    hintText: AppConst.enterPswrd,
                    label: AppConst.password,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CommonButton(
                    text: AppConst.continueTxt,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppConst.account,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey),
                      ),
                      Text(
                        AppConst.signup,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
