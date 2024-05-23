import 'package:coworks_app_ithots/utils/app_colors.dart';
import 'package:coworks_app_ithots/utils/app_const.dart';
import 'package:coworks_app_ithots/widgets/common_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../drawer/drawer.dart';

class ServiceDetails extends StatelessWidget {
  final String title;
  const ServiceDetails({super.key, required this.title});

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 18),
              child: Image.asset(AppImages.profile),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppConst.lorem2,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 25,
                ),
                CommonButton(text: 'Book', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
