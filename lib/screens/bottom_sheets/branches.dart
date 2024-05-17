import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ithots_freelancing/utils/app_colors.dart';

import 'package:ithots_freelancing/utils/app_const.dart';
import 'package:ithots_freelancing/utils/app_images.dart';
import 'package:ithots_freelancing/widgets/common_button.dart';

class Branches extends StatefulWidget {
  const Branches({super.key});

  @override
  State<Branches> createState() => _CoWorksBranchesState();
}

class _CoWorksBranchesState extends State<Branches> {
  final List<String> _branches = [
    'Annanagar',
    'Koranur',
    'Bangalore',
    'Coimbatore',
    'Trichi',
    'Mumbai'
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
        Expanded(
          child: ListView.builder(
              itemCount: _branches.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.grey2,
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      child: Center(child: Text(_branches[index])),
                    ));
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CommonButton(text: AppConst.next, onPressed: () {}),
        )
      ],
    );
  }
}
