import 'package:coworks_app_ithots/screens/coworks/coworks_details.dart';
import 'package:coworks_app_ithots/widgets/location_card.dart';
import 'package:flutter/material.dart';

import '../../utils/app_const.dart';
import '../../utils/app_images.dart';
import '../drawer/drawer.dart';
import '../home.dart';
import '../profile/profile.dart';

class Coworks extends StatelessWidget {
  const Coworks({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        navigateToHome();
      },
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: CoworksDrawer(),
          ),
          appBar: AppBar(
            toolbarHeight: 100,
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
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConst.location,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return LocationCard(
                          img: AppImages.enterprise4,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoworksDetails()));
                          },
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
