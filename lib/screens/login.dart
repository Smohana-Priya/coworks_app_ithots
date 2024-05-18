import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';
import '../utils/app_images.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import 'password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailCntrl = TextEditingController();
  final TextEditingController _pswrdCntrl = TextEditingController();
  bool _isChecked = false;
  @override
  void dispose() {
    _emailCntrl.dispose();
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
                    // alignment: Alignment.center,
                    child: Image.asset(AppImages.logo),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppConst.hello,
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
                    AppConst.enterCred,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonTextField(
                    textCtrl: _emailCntrl,
                    hintText: AppConst.enterEmail,
                    label: AppConst.email,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CommonTextField(
                    textCtrl: _pswrdCntrl,
                    hintText: AppConst.enterPswrd,
                    label: AppConst.password,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: _isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            _isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        AppConst.remember,
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CommonButton(
                    text: AppConst.continueTxt,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Password()));
                    },
                  ),
                  SizedBox(
                    height: 10,
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
