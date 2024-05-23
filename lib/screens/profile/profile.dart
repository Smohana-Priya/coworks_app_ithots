import 'package:coworks_app_ithots/utils/app_colors.dart';
import 'package:coworks_app_ithots/utils/app_const.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../drawer/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: CoworksDrawer(),
        ),
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Image.asset(AppImages.logo),
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 20.0, top: 18),
          //     child: Image.asset(AppImages.profile),
          //   )
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Text(
                AppConst.editProfile,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(AppImages.profile2),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppConst.name,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Ashok Kumar',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                AppConst.contactDetails,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'No.36, First Main Road, A Block\nAnna Nagar, Chennai 600 040 ',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    AppConst.mobile,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '9876543210',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Email : ',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'ashok23@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
