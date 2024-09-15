// import 'package:flutter/material.dart';
// import 'package:country_code_picker/country_code_picker.dart'; // استيراد حزمة CountryCodePicker

// class CustomCountryCodePicker extends StatelessWidget {
//   final Function(String) onCountryChanged;
//   final String initialSelection;
//   final List<String> favoriteCountries;

//   const CustomCountryCodePicker({
//     super.key,
//     required this.onCountryChanged,
//     required this.initialSelection,
//     required this.favoriteCountries,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerRight,
//       child: SizedBox(
//         height: 60, // الارتفاع الذي تريده لـ CountryCodePicker
//         child: CountryCodePicker(
//           onChanged: (country) {
//             onCountryChanged(country.dialCode!); // تمرير كود الدولة المختار
//           },
//           boxDecoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.grey,
//           ),
//           initialSelection:
//               initialSelection, // كود البلد الافتراضي (مصر أو غيرها)
//           favorite: favoriteCountries, // الدول المفضلة
//           showCountryOnly: false,
//           showOnlyCountryWhenClosed: false,
//           alignLeft: true,
//         ),
//       ),
//     );
//   }
// }
