import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../utils/app_images.dart';

class BranchServices extends StatelessWidget {
  final String branchName;
  BranchServices({super.key, required this.branchName});
  final List<Map<String, dynamic>> _services = [
    {
      'img': AppImages.workstation,
      'title': 'Book a Workstation',
    },
    {
      'img': AppImages.conference,
      'title': 'Book a Conference Room',
    },
    {
      'img': AppImages.meeting,
      'title': 'Book Meeting Room',
    },
    {
      'img': AppImages.seat,
      'title': 'Book a Hot Seat',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConst.branches,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColors.grey,
                  )),
            ],
          ),
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            AppConst.workspace,
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.grey),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                color: AppColors.grey2,
                borderRadius: BorderRadius.circular(15)),
            width: double.infinity,
            child: Image.asset(AppImages.logo),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            branchName,
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.grey),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _services.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        width: double.infinity,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.grey2,
                              child: Image.asset(_services[index]['img']),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(_services[index]['title']),
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      ],
    );
  }
}
