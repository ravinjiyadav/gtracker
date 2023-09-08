// // ignore_for_file: avoid_print
//
// import 'package:dcbase/dcbase.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:g_tracker/modules/People/service/remote_service.dart';
// import 'package:g_tracker/widgets/widgets.dart';
// import '../../../AppComponents/text_styles.dart';
//
// import '../controller/people_vm.dart';
//
// class ChooseOfName extends StatefulWidget {
//   const ChooseOfName({Key? key}) : super(key: key);
//
//   @override
//   State<ChooseOfName> createState() => _ChooseOfNameState();
// }
//
// class _ChooseOfNameState extends State<ChooseOfName> {
//   // Member API
//   Future fetchMembers(PeopleScreenVm modal) async {
//     var members = await RemoteServicesPeople.fetchMembers(context);
//     setState(() {
//       modal.isMemberLoaded = true;
//     });
//     print("member is $members");
//     if (members != null) {
//       modal.memberList = members;
//     } else {
//       print("device is null");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFFFFFF),
//       appBar: customAppbar2(
//         context,
//         "Choose Name",
//         () {},
//         TextStyles.appbar2TextStyle,
//       ),
//       body: BaseWidget(
//           model: PeopleScreenVm(context: context),
//           builder: (context, modal, child) {
//             fetchMembers(modal);
//             return Column(
//               children: [
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Center(
//                   child: Container(
//                     height: 62.h,
//                     width: 315.w,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFF5F5F5),
//                       borderRadius: BorderRadius.circular(12.r),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Image.asset(
//                           "assets/images/map-icon.png",
//                           height: 40.h,
//                           width: 37.w,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "Name",
//                               style: TextStyles.grey12px400,
//                             ),
//                             SizedBox(
//                               height: 5.h,
//                             ),
//                             Text(
//                               "My New Favourite Stare",
//                               style: TextStyles.black16px500,
//                             ),
//                           ],
//                         ),
//                         ImageIcon(
//                           const AssetImage("assets/images/edit.png"),
//                           color: const Color(0xFF28BFAD),
//                           size: 32.r,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 const BigHeading4(
//                   heading1: "Members ",
//                   headingsub: "alert notifications",
//                 ),
//                 SizedBox(
//                   height: 19.h,
//                 ),
//                 Container(
//                   height: 450.h,
//                   width: 315.w,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12.r),
//                     color: const Color(0xFFF5F5F5),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                           height: 420.h,
//                           width: 315.w,
//                           child: modal.isMemberLoaded
//                               ? ListView.separated(
//                                   separatorBuilder: (context, index) =>
//                                       SizedBox(
//                                     height: 8.h,
//                                   ),
//                                   itemCount:
//                                       modal.memberList.data?.members?.length ??
//                                           0,
//                                   itemBuilder: (context, index) {
//                                     var data =
//                                         modal.memberList.data?.members?[index];
//                                     return Row(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.all(8.0.r),
//                                           child: Row(
//                                             children: [
//                                               modal
//                                                           .memberList
//                                                           .data
//                                                           ?.members?[index]
//                                                           .photo ==
//                                                       null
//                                                   ? Image.asset(
//                                                       "assets/images/user.png",
//                                                       height: 45.h,
//                                                       width: 45.w,
//                                                     )
//                                                   : ClipRRect(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               10.r),
//                                                       child: Image.network(
//                                                         data!.photo.toString(),
//                                                         height: 45.h,
//                                                         width: 45.w,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                               SizedBox(
//                                                 width: 15.w,
//                                               ),
//                                               SizedBox(
//                                                 height: 40.h,
//                                                 width: 100.w,
//                                                 child: Text(
//                                                   data!.fullName![0]
//                                                           .toUpperCase() +
//                                                       data.fullName![0]
//                                                           .substring(1),
//                                                   style:
//                                                       TextStyles.black15px400,
//                                                   overflow:
//                                                       TextOverflow.visible,
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 20.w,
//                                         ),
//                                         Column(
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Text(
//                                                   "On Enter",
//                                                   style:
//                                                       TextStyles.black12px500,
//                                                 ),
//                                                 SizedBox(
//                                                   width: 15.w,
//                                                 ),
//                                                 SizedBox(
//                                                   height: 25.h,
//                                                   width: 35.h,
//                                                   child: FittedBox(
//                                                     fit: BoxFit.fill,
//                                                     child: CupertinoSwitch(
//                                                       activeColor: const Color(
//                                                           0xFF28BFAD),
//                                                       value: modal.isArriveOn,
//                                                       onChanged: (onEnter) {
//                                                         modal.isArriveOn =
//                                                             onEnter;
//                                                       },
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               height: 5.h,
//                                             ),
//                                             Row(
//                                               children: [
//                                                 SizedBox(
//                                                   child: Text(
//                                                     "On Exit",
//                                                     style:
//                                                         TextStyles.black12px500,
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 22.w,
//                                                 ),
//                                                 SizedBox(
//                                                   height: 25.h,
//                                                   width: 35.h,
//                                                   child: FittedBox(
//                                                     fit: BoxFit.fill,
//                                                     child: CupertinoSwitch(
//                                                       activeColor:
//                                                           const Color(0xFF28BFAD),
//                                                       value: modal.isLeavingOn,
//                                                       onChanged: (onExit) {
//                                                         modal.isLeavingOn =
//                                                             !modal.isLeavingOn;
//                                                       },
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             )
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 )
//                               : const Center(
//                                   child: CircularProgressIndicator(
//                                       color: Color(0xFF28BFAD)),
//                                 )),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 CustomButton(
//                   onPress: () {},
//                   title: "Save",
//                   color: const Color(0xFF28BFAD),
//                 )
//               ],
//             );
//           }),
//     );
//   }
// }
//
// // class MemberNotificationsCard extends StatelessWidget {
// //   const MemberNotificationsCard({
// //     Key? key,
// //     required this.name,
// //     required this.imageUrl,
// //     required this.isActiveArrive,
// //     required this.isActiveLeaving,
// //     required this.onPressArrive,
// //     required this.onPressLeave,
// //   }) : super(key: key);
// //   final String name;
// //   final String imageUrl;
//
// //   final bool isActiveArrive;
// //   final bool isActiveLeaving;
// //   final Function(bool)? onPressArrive;
// //   final Function(bool)? onPressLeave;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //       children: [
// //         Row(
// //           children: [
// //             Image.network(
// //               imageUrl,
// //               height: 40.h,
// //               width: 40.w,
// //             ),
// //             SizedBox(
// //               width: 15.w,
// //             ),
// //             Container(
// //               height: 40.h,
// //               width: 40.w,
// //               child: Text(
// //                 name,
// //                 style: TextStyles.black15px400,
// //                 maxLines: 1,
// //                 overflow: TextOverflow.ellipsis,
// //               ),
// //             )
// //           ],
// //         ),
// //         Column(
// //           children: [
// //             Row(
// //               children: [
// //                 Text(
// //                   "On Enter",
// //                   style: TextStyles.black11px500,
// //                 ),
// //                 SizedBox(
// //                   width: 15.w,
// //                 ),
// //                 SizedBox(
// //                   height: 22.h,
// //                   width: 35.h,
// //                   child: FittedBox(
// //                     fit: BoxFit.fill,
// //                     child: CupertinoSwitch(
// //                       activeColor: AppColors.themeColor,
// //                       value: true,
// //                       onChanged: (_) {},
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             SizedBox(
// //               height: 1.h,
// //             ),
// //             Row(
// //               children: [
// //                 Text(
// //                   "On Exit",
// //                   style: TextStyles.black11px500,
// //                 ),
// //                 SizedBox(
// //                   width: 19.w,
// //                 ),
// //                 SizedBox(
// //                   height: 25.h,
// //                   width: 35.h,
// //                   child: FittedBox(
// //                     fit: BoxFit.fill,
// //                     child: CupertinoSwitch(
// //                       activeColor: AppColors.themeColor,
// //                       value: false,
// //                       onChanged: (_) {},
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             )
// //           ],
// //         ),
// //         Image.asset(
// //           "assets/images/closebox.png",
// //           height: 50.h,
// //         )
// //       ],
// //     );
// //   }
// // }
//
// // class SwitchNotifications extends StatelessWidget {
// //   const SwitchNotifications({
// //     Key? key,
// //     required this.title,
// //     required this.isActive,
// //     required this.onPress,
// //   }) : super(key: key);
// //   final String title;
// //   final bool isActive;
// //   final Function(bool)? onPress;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Text(
// //           title,
// //           style: TextStyles.black11px500,
// //         ),
// //         SizedBox(
// //           width: 15.w,
// //         ),
// //         SizedBox(
// //           height: 22.h,
// //           width: 35.h,
// //           child: FittedBox(
// //             fit: BoxFit.fill,
// //             child: CupertinoSwitch(
// //               activeColor: AppColors.themeColor,
// //               value: isActive,
// //               onChanged: onPress,
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
