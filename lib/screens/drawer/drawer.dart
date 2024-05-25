import 'package:coworks_app_ithots/data/nav_items.dart';
import 'package:coworks_app_ithots/screens/coworks/coworks.dart';
import 'package:coworks_app_ithots/screens/directory/directory.dart';
import 'package:coworks_app_ithots/screens/home.dart';
import 'package:coworks_app_ithots/screens/services/services.dart';
import 'package:coworks_app_ithots/utils/app_colors.dart';
import 'package:coworks_app_ithots/utils/app_images.dart';
import 'package:flutter/material.dart';

class CoworksDrawer extends StatelessWidget {
  const CoworksDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.close,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Image.asset(AppImages.logo),
          ),
          SizedBox(
            height: 30,
          ),
          for (int i = 0; i < navItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 30),
              child: InkWell(
                onTap: () {
                  switch (i) {
                    case 0:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                      break;
                    case 1:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Coworks()));
                      break;
                    case 2:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Directory()));
                      break;
                    case 3:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Services()));
                      break;
                  }
                },
                child: Text(
                  navItems[i],
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
