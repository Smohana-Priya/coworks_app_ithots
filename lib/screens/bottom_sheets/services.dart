// import 'package:flutter/material.dart';

// import '../../utils/app_colors.dart';
// import '../../utils/app_const.dart';
// import '../../utils/app_images.dart';

// class Services extends StatelessWidget {
//   Services({super.key});

//   final List<Map<String, dynamic>> _services = [
//     {
//       'img': AppImages.marketing,
//       'title': 'Digital Marketing',
//     },
//     {
//       'img': AppImages.seo,
//       'title': 'SEO',
//     },
//     {
//       'img': AppImages.meeting,
//       'title': 'HR Service',
//     },
//     {
//       'img': AppImages.legal,
//       'title': 'Legal Service',
//     },
//     {
//       'img': AppImages.virtual,
//       'title': 'Virtual Assistant',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 AppConst.services,
//                 style: TextStyle(
//                     fontFamily: 'Inter',
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//               ),
//               IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(
//                     Icons.close,
//                     color: AppColors.grey,
//                   )),
//             ],
//           ),
//         ),
//         Divider(),
//         SizedBox(
//           height: 10,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(
//             AppConst.workspace,
//             style: TextStyle(
//                 fontFamily: 'Inter',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.grey),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Container(
//             height: 80,
//             decoration: BoxDecoration(
//                 color: AppColors.grey2,
//                 borderRadius: BorderRadius.circular(15)),
//             width: double.infinity,
//             child: Image.asset(AppImages.logo),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(
//             AppConst.bookService,
//             style: TextStyle(
//                 fontFamily: 'Inter',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.grey),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//               itemCount: _services.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         height: 70,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15)),
//                         width: double.infinity,
//                         child: Row(
//                           children: [
//                             CircleAvatar(
//                               backgroundColor: AppColors.grey2,
//                               child: Image.asset(_services[index]['img']),
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Text(_services[index]['title']),
//                           ],
//                         ),
//                       ),
//                     ));
//               }),
//         ),
//       ],
//     );
//   }
// }
