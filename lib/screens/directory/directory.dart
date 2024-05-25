import 'package:coworks_app_ithots/screens/home.dart';
import 'package:coworks_app_ithots/utils/app_colors.dart';
import 'package:coworks_app_ithots/utils/app_const.dart';
import 'package:coworks_app_ithots/widgets/directory_card.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../../widgets/category_dropdown.dart';
import '../drawer/drawer.dart';
import '../profile/profile.dart';
import 'directory_details.dart';

class Directory extends StatefulWidget {
  const Directory({super.key});

  @override
  State<Directory> createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  final TextEditingController _searchCntrl = TextEditingController();
  final List<String> _img = [
    AppImages.enterprise1,
    AppImages.enterprise2,
    AppImages.enterprise3,
    AppImages.enterprise1,
    AppImages.enterprise2,
  ];
  @override
  void dispose() {
    _searchCntrl.dispose();
    super.dispose();
  }

  void navigateToHome() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConst.dir,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _searchCntrl,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.3),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.grey,
                          ),
                          hintText: AppConst.search,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryDropdown()
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: _img.length,
                      itemBuilder: (context, index) {
                        return DirectoryCard(
                          img: _img[index],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DirectoryDetails()));
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
