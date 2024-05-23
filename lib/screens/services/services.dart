import 'package:coworks_app_ithots/screens/services/service_details.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../utils/app_images.dart';
import '../drawer/drawer.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final List<Map<String, String>> cardsData = [
    {
      'image': AppImages.coWorks,
      'text': AppConst.digital,
    },
    {
      'image': AppImages.directory,
      'text': AppConst.seo,
    },
    {
      'image': AppImages.events,
      'text': AppConst.graphic,
    },
    {
      'image': AppImages.services,
      'text': AppConst.print,
    },
    {
      'image': AppImages.coWorks,
      'text': AppConst.hrAss,
    },
    {
      'image': AppImages.directory,
      'text': AppConst.legal,
    },
    {
      'image': AppImages.events,
      'text': AppConst.webDev,
    },
    {
      'image': AppImages.services,
      'text': AppConst.comReg,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppConst.services,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServiceDetails(
                                          title: cardsData[i]['text']!,
                                        )));
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
      ),
    );
  }
}
