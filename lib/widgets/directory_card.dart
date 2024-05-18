import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';

class DirectoryCard extends StatelessWidget {
  final String img;
  final void Function()? onPressed;

  const DirectoryCard({super.key, required this.img, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.3, color: AppColors.grey)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  img,
                  width: MediaQuery.of(context).size.width / 4,
                  height: 133,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppConst.enterpriseName,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.grey2),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 17,
                                    ),
                                    Text('London, UK')
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.grey2),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.stars_sharp,
                                      size: 17,
                                    ),
                                    Text('5.0')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '(7,8709)',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.green,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
