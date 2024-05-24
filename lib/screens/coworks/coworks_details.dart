import 'package:coworks_app_ithots/widgets/common_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../utils/app_images.dart';
import '../profile/profile.dart';

class CoworksDetails extends StatelessWidget {
  CoworksDetails({super.key});

  final List facilities = [
    'Car Parking',
    '2-wheeler Parking',
    'Cafeteria',
    'Meeting Room',
    'Conference Room',
    '24/7 Power Supply',
    'Virtual Assistant',
    'High Speed Network'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text(
            AppConst.locationDetails,
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Image.asset(AppImages.profile)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anna Nagar',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.grey2),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Wrap(
                          spacing: 7,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 17,
                            ),
                            Text(
                              'Anna Nagar',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.grey3),
                          child: Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: AppColors.black2),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, border: Border.all()),
                          child: CircleAvatar(
                            backgroundColor: AppColors.grey2,
                            child: Image.asset(AppImages.share),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: List.generate(facilities.length, (index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 4 - 20,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppImages.cmp),
                          SizedBox(height: 8.0),
                          Text(
                            facilities[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  AppConst.moreInfo,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  AppConst.lorem,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  AppConst.contactDetails,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 10,
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
                          color: AppColors.primary,
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
                          color: AppColors.primary,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(AppImages.map),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CommonButton(
                            text: AppConst.bookNow, onPressed: () {})),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CommonButton(
                      text: AppConst.referAfrnd,
                      onPressed: () {},
                      bgColor: AppColors.grey3,
                      txtColor: AppColors.black,
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
