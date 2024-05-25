import 'package:coworks_app_ithots/utils/app_colors.dart';
import 'package:coworks_app_ithots/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../data/carousel_items.dart';
import '../../utils/app_images.dart';
import '../../widgets/common_button.dart';
import '../profile/profile.dart';

class DirectoryDetails extends StatefulWidget {
  const DirectoryDetails({super.key});

  @override
  State<DirectoryDetails> createState() => _DirectoryDetailsState();
}

class _DirectoryDetailsState extends State<DirectoryDetails> {
  String current = AppImages.enterprise;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text(
            AppConst.dirDetails,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.05),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Image.asset(AppImages.profile),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            current,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  viewportFraction: 0.20,
                  height: 52,
                ),
                items: img.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            current = i;
                          });
                        },
                        child: Image.asset(
                          i,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Positioned(
              left: 3,
              top: 0,
              bottom: 0,
              child: InkWell(
                onTap: () {
                  _carouselController.previousPage();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              right: 3,
              top: 0,
              bottom: 0,
              child: InkWell(
                onTap: () {
                  _carouselController.nextPage();
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ]),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConst.enterpriseName,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.grey2,
                      ),
                      padding: EdgeInsets.all(size.width * 0.02),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 17,
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            'London, UK',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: size.width * 0.02),
                    Wrap(
                      children: [
                        Image.asset(
                          AppImages.call,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.call,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.02),
                    Wrap(
                      children: [
                        Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.grey,
                          size: 15,
                        ),
                        // Image.asset(AppImages.mail),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.mail,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.02),
                    Wrap(
                      children: [
                        Image.asset(
                          AppImages.web,
                          width: 15,
                          height: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.web,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: CircleAvatar(
                        backgroundColor: AppColors.grey2,
                        child: Icon(
                          Icons.share_outlined,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  AppConst.lorem,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Row(
                      children: [
                        Image.asset(
                          AppImages.profile2,
                          width: size.width * 0.15,
                          height: size.width * 0.15,
                        ),
                        SizedBox(width: size.width * 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ashok Kumar',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                            Text(
                              'Founder, CEO',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  AppConst.contactDetails,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  'No.36, First Main Road, A Block\nAnna Nagar, Chennai 600 040',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    Text(
                      AppConst.mobile,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      '9876543210',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.005),
                Row(
                  children: [
                    Text(
                      'Email : ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      'ashok23@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Image.asset(AppImages.map, width: size.width * 0.9),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        Image.asset(
                          AppImages.call,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.call,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.02),
                    Wrap(
                      children: [
                        Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.grey,
                          size: 15,
                        ),
                        // Image.asset(AppImages.mail),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.mail,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.02),
                    Wrap(
                      children: [
                        Image.asset(
                          AppImages.web,
                          width: 15,
                          height: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          AppConst.web,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: AppColors.black3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width * 0.05),
                    Expanded(
                      child: CommonButton(
                        text: AppConst.referAfrnd,
                        onPressed: () {},
                        bgColor: AppColors.grey3,
                        txtColor: AppColors.black,
                        // height: 36,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
