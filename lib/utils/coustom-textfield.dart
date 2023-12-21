// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomTextFormField extends StatefulWidget {
//   final String hintText;
//   final String labelText;
//   final TextStyle? textStyle;
//   final TextEditingController? controller;
//   final Function(String)? onSubmitted;
//   final String? Function(String?)? validator; // Add a validator function
//   final Function(String)? onChanged;

//   const CustomTextFormField({super.key, 
//     this.controller,
//     this.hintText = '',
//     this.labelText = '',
//     this.textStyle,
//     this.onSubmitted,
//     this.validator, // Accept a validator function
//     this.onChanged,
//   });

//   @override
//   _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   bool _isFocused = false;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 48,
//       child: TextFormField(
//         controller: widget.controller,
//         decoration: InputDecoration(
//           labelText: widget.labelText,
//           hintText: widget.hintText,
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Color(0xffEFD5FF),
//               width: 2,
//             ),
//             borderRadius: BorderRadius.circular(13),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               width: 2,
//               color: _isFocused
//                   ? const Color(0xffEFD5FF)
//                   : const Color(0xff646464).withOpacity(0.55),
//             ),
//             borderRadius: BorderRadius.circular(13),
//           ),
//           filled: true,

//           // fillColor: _isFocused ? Color(0xffFFFFFF) : Color(0xffEFD5FF),
//           fillColor: _isFocused ? const Color(0xffFFFFFF) : const Color(0xffFFFFFF),
//           labelStyle: widget.textStyle ??
//               GoogleFonts.poppins().copyWith(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: const Color(0xFF646464),
//                 // color: Color(0xFF252525),
//               ), // Use provided textStyle or default
//           hintStyle: (widget.textStyle ?? GoogleFonts.poppins()).copyWith(
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//             color: const Color(0xFF646464).withOpacity(0.75),
//           ),
//         ),
//         onChanged: (text) {
//           setState(() {
//             _isFocused = false;
//           });

//           if (widget.onChanged != null) {
//             widget.onChanged!(text);
//           }
//         },
//         onTap: () {
//           setState(() {
//             _isFocused = true;
//           });
//         },
//         onFieldSubmitted: (text) {
//           setState(() {
//             if (widget.onSubmitted != null) {
//               widget.onSubmitted!(text);
//             }
//           });
//         },
//         validator: widget.validator,

//         //
//       ),
//     );
//   }
// }
