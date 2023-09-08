// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../AppComponents/app_colors.dart';
// import '../../../AppComponents/routes_file.dart';
// import '../../../AppComponents/text_styles.dart';
//
// class AddressContainer extends StatelessWidget {
//   const AddressContainer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 315.w,
//       height: 200.w,
//       decoration: BoxDecoration(
//         color: AppColors.scaffoldColor,
//         borderRadius: BorderRadius.circular(24.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 10.h,
//           ),
//           Center(
//             child: Container(
//               height: 3.h,
//               width: 51.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12.r),
//                 color: const Color(0xFF5A4873),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 15.h,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 20.0.w),
//             child: Text(
//               "Address",
//               style: TextStyles.theme16px700,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 20.0.w),
//                     child: Container(
//                         height: 24.h,
//                         width: 18.w,
//                         color: AppColors.lightGreyColor,
//                         child: Image.asset("assets/images/subtract.png")),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   )
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     """60, ulica Ponomarenko, Tivali
//                     Fruenzyenski""",
//                     style: TextStyles.black12px500,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Text(
//                     "13:06 - 16:26 (2 Hr, 35 min) ",
//                     style: TextStyles.grey10px400,
//                   )
//                 ],
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(
//                       context, RouteName.memberHistoryScreen);
//                 },
//                 child: Container(
//                   width: 40.w,
//                   height: 85.h,
//                   decoration: BoxDecoration(
//                     color: AppColors.themeColor,
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Column(
//                     children: [
//                       Image.asset("assets/images/locationicon.png"),
//                       Text(
//                         "See History",
//                         textAlign: TextAlign.center,
//                         style: TextStyles.white8px500,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 5.h,
//           ),
//           Container(
//             width: 287.w,
//             height: 1.3.h,
//             color: const Color(0xFFF4F5F7),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 20.0.w),
//             child: Text(
//               "Places ",
//               style: TextStyles.theme16px700,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, RouteName.placesScreen);
//                 },
//                 child: Container(
//                   height: 25.h,
//                   width: 89.w,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.r),
//                     color: AppColors.themeColor,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         height: 15.h,
//                         width: 15.w,
//                         alignment: Alignment.center,
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                         ),
//                         child: Center(
//                           child: Icon(
//                             Icons.add,
//                             size: 10.r,
//                             color: AppColors.themeColor,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         "Add Places",
//                         style: TextStyles.white10px500,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               const SmallIconText(
//                 imageUrl: "assets/images/briefcase.png",
//                 name: "Work",
//               ),
//               const SmallIconText(
//                 imageUrl: "assets/images/home.png",
//                 name: "Home",
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class SmallIconText extends StatelessWidget {
//   const SmallIconText({
//     Key? key,
//     required this.imageUrl,
//     required this.name,
//   }) : super(key: key);
//   final String imageUrl;
//   final String name;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 25.h,
//       width: 89.w,
//       decoration: BoxDecoration(
//         color: AppColors.lightGreyColor,
//         borderRadius: BorderRadius.circular(10.r),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           ImageIcon(
//             AssetImage(imageUrl),
//             size: 15.r,
//           ),
//           Text(
//             name,
//             style: TextStyles.black10px500,
//           )
//         ],
//       ),
//     );
//   }
// }
