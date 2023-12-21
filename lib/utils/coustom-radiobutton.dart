// import 'package:flutter/material.dart';
// import 'package:umla_frontend_app/res/colors/colors.dart';

// class CustomRadioButton extends StatelessWidget {
//   final int value;
//   final String title;
//   final int? selectedValue;
//   final ValueChanged<int?>? onChanged;

//   const CustomRadioButton({super.key, 
//     required this.value,
//     required this.title,
//     required this.selectedValue,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: GestureDetector(
//         onTap: () {
//           onChanged?.call(value);
//         },
//         child: Container(
//           height: 48,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(13),
//             border: Border.all(width: 2, color: const Color(0xffEFD5FF)),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xff252525),
//                   ),
//                 ),
//                 Radio<int?>(
//                   value: value,
//                   groupValue: selectedValue,
//                   onChanged: onChanged ?? (int? value) {},
//                   fillColor: MaterialStateProperty.all(AppColor.blueColor),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // class CustomRadioButton extends StatefulWidget {
// //   const CustomRadioButton({super.key});

// //   @override
// //   State<CustomRadioButton> createState() => CustommStateRadioButton();
// // }

// // class CustommStateRadioButton extends State<CustomRadioButton> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }
