import 'package:flutter/material.dart';

import 'package:ithots_freelancing/utils/app_colors.dart';

import 'package:ithots_freelancing/utils/app_const.dart';
import 'package:ithots_freelancing/utils/app_images.dart';
import 'package:ithots_freelancing/widgets/common_button.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _CoWorksBranchesState();
}

class _CoWorksBranchesState extends State<Services> {
  final List<String> _services = [
    'Digital Marketing',
    'SEO',
    'HR Service',
    'Legal Service',
    'Virtual Assistant',
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
            AppConst.bookService,
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
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.grey2,
                            // radius: 40,
                            child: Image.asset(AppImages.marketing),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(_services[index]),
                        ],
                      ),
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
