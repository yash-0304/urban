// // import 'package:another_flushbar/flushbar.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // // import 'package:fluttertoast/fluttertoast.dart';
// // class Utils {
// //   // static void flushBarErrorMessage(String message, BuildContext context) {

// //   // }
// //   static snackBar(String message, BuildContext context, String title) {
// //     return Get.snackbar(title, message);
// //   }
// // }

// import 'package:blur/blur.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:umla_frontend_app/res/colors/colors.dart';
// import 'package:umla_frontend_app/views/subscription/subscription-full-screen.dart';
// import 'package:umla_frontend_app/views/chat/chat-screen.dart';
// import '../controllers/offeroutlet_controller.dart';
// import '../controllers/user_controller.dart';
// import '../res/routes/route-names.dart';

// class Utils {
//   Widget chatPopup(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColor.blueColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       padding: EdgeInsets.all(12),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Align(
//             alignment: Alignment.topRight,
//             child: IconButton(
//               onPressed: () => Get.back(),
//               icon: Icon(
//                 Icons.close_rounded,
//                 color: Colors.white,
//                 size: 20,
//               ),
//             ),
//           ),
//           Text(
//             '“To enjoy chatting with Jessica, first you have to send offer”',
//             textAlign: TextAlign.center,
//             style: GoogleFonts.poppins(
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 32),
//           Text(
//             "Click on the send offer button",
//             style: GoogleFonts.poppins(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             "👇",
//             style: GoogleFonts.poppins(
//               fontSize: 32,
//               fontWeight: FontWeight.w500,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   static void fieldFocusChange(
//       BuildContext context, FocusNode current, FocusNode nextFocus) {
//     current.unfocus();
//     FocusScope.of(context).requestFocus(nextFocus);
//   }

//   static toastMessage(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.black,
//       textColor: Colors.white,
//       gravity: ToastGravity.BOTTOM,
//       toastLength: Toast.LENGTH_LONG,
//     );
//   }

//   static toastMessageCenter(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.black,
//       gravity: ToastGravity.CENTER,
//       toastLength: Toast.LENGTH_LONG,
//       textColor: Colors.white,
//     );
//   }

//   static snackBar(String title, String message) {
//     Get.snackbar(
//       title,
//       message,
//     );
//   }

//   // Widget _buildFilterSection() {
//   Widget forwardButtonFn({
//     required String feature,
//     required VoidCallback? onTap,
//     required BuildContext context,
//   }) {
//     return SizedBox(
//       width: 50,
//       height: 50,
//       child: TextButton(
//         onPressed: onTap,
//         // onPressed: () {
//         // onap: onTap,

//         // },

//         // : null,
//         style: TextButton.styleFrom(
//           backgroundColor: AppColor.blueColor,
//           foregroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius:
//                 BorderRadius.circular(MediaQuery.of(context).size.width * 0.1),
//           ),
//         ),
//         // },
//         child: Image.asset(
//           'assets/icons/caret-right.png',
//           width: MediaQuery.of(context).size.width * 0.105,
//         ),
//       ),
//     );
//   }

//   Widget Premium(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.55,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           image: DecorationImage(
//               image: Image.asset(
//             "assets/images/premium.png",
//             fit: BoxFit.cover,
//           ).image)),
//     );
//   }

//   static void showReferralPopup(BuildContext context) {
//     OfferOutlet offerOutlet = Get.find<OfferOutlet>();
//     UserController userController = Get.find<UserController>();

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           backgroundColor: Colors.white,
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             height: MediaQuery.of(context).size.height * 0.33,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: IconButton(
//                     icon: const Icon(Icons.close),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       Get.toNamed(RouteName.homeNav);
//                     },
//                   ),
//                 ),
//                 const Text(
//                   "Already have a referral code?",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16,
//                     color: Color(0xFF515ADA),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 5),
//                   child: Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFEFD5FF),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: TextFormField(
//                       // keyboardType: TextInputType.,
//                       inputFormatters: [
//                         // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                         LengthLimitingTextInputFormatter(6),
//                       ],
//                       decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Enter the code here",
//                         hintStyle: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF646464),
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       controller: offerOutlet.Referral.value,
//                       style: const TextStyle(
//                         fontSize: 16,
//                         color: Color(0xFF252525),
//                         fontWeight: FontWeight.w500,
//                       ),
//                       textAlign: TextAlign.center,
//                       onChanged: (value) {
//                         print(value);
//                         print(offerOutlet.Referral.value.text);
//                       },
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     if (offerOutlet.Referral.value.text == "") {
//                       Get.snackbar("Enter the Code",
//                           "Enter the Referral code to Redeems");
//                     } else {
//                       offerOutlet
//                           .handleReferralCode()
//                           .then((value) => userController.getUserDetails());
//                       Navigator.of(context).pop();
//                     }
//                   },
//                   child: Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF515ADA),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         "Redeem Code",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     ); // You can pass any data you want here
//   }

//   String printFirstTwoWords(String statement) {
//     List<String> words = statement.split(' ');
//     String ans = '';
//     if (words.length >= 2) {
//       print('${words[0]} ${words[1]}');
//       ans = '${words[0]} ${words[1]}';
//     } else if (words.length == 1) {
//       ans = '${words[0]}';
//       print('${words[0]}');
//     } else {
//       print('No words to display.');
//     }
//     return ans;
//   }

// // To show the referral popup, you can call this function from your widget or button:

// // _showReferralPopup(context);

//   // Widget _buildFilterSection() {
//   Widget backwardButtonFn({
//     required String feature,
//     required VoidCallback? onTap,
//     required BuildContext context,
//   }) {
//     return SizedBox(
//       width: 50,
//       height: 50,
//       child: TextButton(
//         onPressed: onTap,
//         // onPressed: () => Get.back(),
//         style: TextButton.styleFrom(
//           foregroundColor: AppColor.blueColor,
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               color: AppColor.blueColor,
//               width: 2,
//             ),
//             borderRadius:
//                 BorderRadius.circular(MediaQuery.of(context).size.width * 0.1),
//           ),
//         ),
//         child: Image.asset(
//           'assets/icons/caret-left.png',
//           color: AppColor.blueColor,
//           width: MediaQuery.of(context).size.width * 0.105,
//         ),
//       ),
//     );
//   }
// }

// //
// void PrimumBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     barrierColor: Colors.transparent,
//     backgroundColor: Colors.transparent,
//     showDragHandle: true,
//     elevation: 20,
//     useSafeArea: false,
//     enableDrag: true,
//     isScrollControlled: true, // Ensures the sheet is fully draggable
//     builder: (context) {
//       return DraggableScrollableSheet(
//         initialChildSize: 0.82, // Initial size of the sheet
//         minChildSize: 0.54, // Minimum size of the sheet
//         maxChildSize: 0.9, // Maximum size of the sheet
//         snap: true,
//         expand: false, // Allows the sheet to be fully expanded
//         builder: (context, controller) {
//           return Container(
//             decoration: BoxDecoration(
//                 color: AppColor.blueColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 )),
//             child: SingleChildScrollView(
//               controller: controller,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   // Add more content to the bottom sheet here
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.4,
//                     child: Stack(
//                       children: [
//                         Image.asset(
//                           'assets/images/subscribe/subscription-bgimg.png',
//                           fit: BoxFit.cover,
//                           height: MediaQuery.of(context).size.height * 0.36,
//                           width: double.maxFinite,
//                         ),
//                         //
//                         Center(
//                             child: SizedBox(
//                           width: MediaQuery.of(context).size.width * 0.838,
//                           child: Text(
//                             "Connect and Explore More With UMLA Plus" "\n ",
//                             style: GoogleFonts.poppins(
//                               fontSize: 24,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         )),
//                         //
//                         Positioned(
//                           right: MediaQuery.of(context).size.width * 0.08,
//                           bottom: MediaQuery.of(context).size.height * 0.01,
//                           child: Container(
//                             height: 50,
//                             width: MediaQuery.of(context).size.width * 0.398,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(40)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(9),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // width: 65,
//                                     width: MediaQuery.of(context).size.width *
//                                         0.165,
//                                     height: 36,
//                                     child: Center(
//                                       child: Text(
//                                         "Free",
//                                         style: GoogleFonts.poppins(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColor.blackColor,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   //
//                                   // Spacer(),
//                                   //
//                                   Container(
//                                     // width: 65,
//                                     width: MediaQuery.of(context).size.width *
//                                         0.165,
//                                     height: 36,
//                                     decoration: BoxDecoration(
//                                         color: AppColor.pinkColor,
//                                         borderRadius:
//                                             BorderRadius.circular(50)),
//                                     child: Center(
//                                       child: Text(
//                                         "Plus",
//                                         style: GoogleFonts.poppins(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColor.blackColor,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   //
//                   Container(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       // height: MediaQuery.of(context).size.height * 0.7,
//                       width: double.maxFinite,
//                       decoration: BoxDecoration(
//                         color: AppColor.blueColor,
//                       ),
//                       child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 16, vertical: 22),
//                           child: SingleChildScrollView(
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/subscribe/subscription-model.png',
//                                     // height: MediaQuery.of(context).size.height * 0.32,
//                                     // width: MediaQuery.of(context).size.width * 0.84,
//                                     width: double.maxFinite,
//                                   ),
//                                 ]),
//                           ))),
//                   //
//                   SizedBox(height: 16),
//                   InkWell(
//                     onTap: () {
//                       Get.back();
//                       Get.to(SubscriptionFullScreen());
//                     },
//                     borderRadius: BorderRadius.circular(40),
//                     child: Center(
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 52, vertical: 12),
//                         decoration: BoxDecoration(
//                           color: Color(0xffEFD5FF),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         child: Text.rich(
//                           TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: "Starting from ",
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w400,
//                                   color: AppColor.blackColor,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: "₹99/",
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: AppColor.blackColor,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: "mo",
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                   color: AppColor.blackColor,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     },
//   );
// }

// //
// //
// //

// //
// //
// //
// void showTopPopup() {
//   Get.snackbar(
//     '',
//     '',
//     margin: EdgeInsets.all(0),
//     backgroundColor: Colors.transparent,
//     isDismissible:
//         false, // enabling this make the popup can be closeable by swiping it.
//     dismissDirection: DismissDirection
//         .up, // this will work only when the property' isDismissible ' will be true.
//     snackPosition: SnackPosition.TOP,
//     duration: null,
//     overlayBlur: 0,
//     barBlur: 0,
//     animationDuration: Duration(milliseconds: 400),
//     overlayColor: Colors.transparent,
//     titleText: Container(
//       width: 380,
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           colors: [AppColor.blueColor, AppColor.pinkColor],
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: AppColor.greyColor.withOpacity(0.36),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Get.back(); // Dismiss the Snackbar
//             },
//             child: Icon(
//               Icons.close_rounded,
//               size: 16,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: 218,
//                 child: Text(
//                   'Manish has sent you an offer, please accept the offer within 30 minutes',
//                   textAlign: TextAlign.start,
//                   style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 8),
//               InkWell(
//                 onTap: () {}, // add popup button logic here
//                 borderRadius: BorderRadius.circular(11),
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 16,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Text(
//                     'View Details',
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.poppins(
//                       color: AppColor.blackColor,
//                       fontSize: 10,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
// //
// //
// //
// //
// void blockPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) => Dialog(
//       elevation: 0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       backgroundColor: Colors.white,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             "Are you sure you want to block this profile",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.poppins(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: AppColor.blackColor,
//             ),
//           ),
//           //
//           SizedBox(height: 16),
//           SizedBox(height: 16),
//           //
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () => blockConfirmationPopup(context),
//                 borderRadius: BorderRadius.circular(11),
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
//                   decoration: BoxDecoration(
//                     color: AppColor.redColor,
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Text(
//                     "Confirm",
//                     style: GoogleFonts.poppins(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               //
//               InkWell(
//                 onTap: () => Get.back(),
//                 borderRadius: BorderRadius.circular(11),
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
//                   decoration: BoxDecoration(
//                     // color: AppColor.redColor,
//                     border: Border.all(color: AppColor.greenColor, width: 2),
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   child: Text(
//                     "Cancel",
//                     style: GoogleFonts.poppins(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w600,
//                       color: AppColor.greenColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//           //
//           // SizedBox(height: 16),
//           //
//         ],
//       ),
//     ),
//   );
// }

// //
// //
// //
// void blockConfirmationPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) => Dialog(
//       elevation: 0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       backgroundColor: Colors.white,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             "The account has been blocked now you can no longer send message or receive message from the user",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.poppins(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: AppColor.blackColor,
//             ),
//           ),
//           //
//           SizedBox(height: 16),
//           SizedBox(height: 16),
//           //
//           InkWell(
//             onTap: () {
//               Get.back(); // logic here
//             },
//             borderRadius: BorderRadius.circular(11),
//             child: Container(
//               padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
//               decoration: BoxDecoration(
//                 color: AppColor.blueColor,
//                 borderRadius: BorderRadius.circular(11),
//               ),
//               child: Text(
//                 "Continue",
//                 style: GoogleFonts.poppins(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           //
//         ],
//       ),
//     ),
//   );
// }

// //
// void profilePhotoPopup(BuildContext context) {}
// //
// //
// //
// //
