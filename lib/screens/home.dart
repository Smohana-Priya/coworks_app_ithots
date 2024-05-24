import 'package:coworks_app_ithots/screens/coworks/coworks.dart';
import 'package:coworks_app_ithots/screens/directory/directory.dart';
import 'package:coworks_app_ithots/screens/services/services.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';
import '../utils/app_images.dart';
import 'drawer/drawer.dart';
import 'profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> cardsData = [
    {
      'image': AppImages.coWorks,
      'text': AppConst.coWorks,
    },
    {
      'image': AppImages.directory,
      'text': AppConst.directory,
    },
    {
      'image': AppImages.events,
      'text': AppConst.events,
    },
    {
      'image': AppImages.services,
      'text': AppConst.services,
    },
  ];
  void navigateToScreen(int i) {
    switch (i) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Coworks()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Directory()));
        break;
      case 2:
        null;
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Services()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: CoworksDrawer(),
        ),
        appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(AppImages.logo),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Image.asset(AppImages.profile)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConst.hello,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (int i = 0; i < cardsData.length; i++)
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 25,
                      child: InkWell(
                        onTap: () {
                          navigateToScreen(i);
                        },
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(cardsData[i]['image']!),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.navigate_next),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  cardsData[i]['text']!,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
