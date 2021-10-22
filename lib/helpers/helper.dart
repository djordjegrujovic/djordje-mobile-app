// import 'package:tuple/tuple.dart';
// import 'package:flutter_localization/flutter_localization.dart';
// import 'package:flutter_localization/service/localization_service.dart';

// class Helper {
//   /// Email validation
//   static bool validateEmail(String? value) {
//     RegExp regex = RegExp(
//         r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
//     if (value == null || value.isEmpty) {
//       return false;
//     } else {
//       if (!regex.hasMatch(value))
//         return false;
//       else
//         return true;
//     }
//   }
//
//   static String? validateNotEmpty(String? value) {
//     String? validateText;
//     if (value == null || value.trim().isEmpty) {
//       validateText = getLocalizedString("validation_error_default_text");
//     }
//     return validateText;
//   }
//
//   static String? validateFoundingYear(String? value) {
//     String? validateText = validateNotEmpty(value);
//
//     if (value!.isNotEmpty) {
//       if (DateTime.now().year < int.parse(value) || int.parse(value) <= 1900) {
//         validateText = getLocalizedString("validation_error_year_text");
//       }
//     }
//
//     return validateText;
//   }
//
//   static String? postalCodeValidator(String? value) {
//     RegExp regex = RegExp("([0-9]{5})");
//     String? validateText = validateNotEmpty(value);
//     if ((value?.length != 5) || (!regex.hasMatch(value!))) {
//       validateText = getLocalizedString("validation_error_postal_code_text");
//     }
//     return validateText;
//   }
//
//   static String? validatePhoneNumber(String? value) {
//     RegExp regex = RegExp(
//         r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$');
//     String? validateText = validateNotEmpty(value);
//
//     if (!regex.hasMatch(value!)) {
//       validateText = getLocalizedString("validation_error_phone_number_text");
//     }
//     return validateText;
//   }
//
//   static String? validatePurchaseDate(String? value) {
//     RegExp regex = RegExp("^((0[1-9])|(1[0-2]))\\/(\\d{4})\$");
//     String? validateText = validateNotEmpty(value);
//
//     if (!regex.hasMatch(value!)) {
//       validateText = getLocalizedString("validation_error_purchase_date_text");
//     }
//
//     if (value.length == 7) {
//       final yearParse = value.substring(value.length - 4);
//       final monthParse = value.substring(0, value.length - 5);
//       final year = int.parse(yearParse);
//       final month = int.parse(monthParse);
//       if (year < 1900 ||
//           year > DateTime.now().year ||
//           (year == DateTime.now().year && month > DateTime.now().month)) {
//         validateText =
//             getLocalizedString("validation_error_purchase_date_text");
//       }
//     }
//
//     return validateText;
//   }
//
//   static String? validatePercentage(String? value) {
//     String? validateText = validateNotEmpty(value);
//
//     if (validateText == null &&
//         (int.parse(value!) < 0 || int.parse(value) > 100)) {
//       validateText = getLocalizedString("validation_error_percent_text");
//     }
//     return validateText;
//   }
//
//   static String? validateBirthDay(String? value) {
//     String? validateText = validateNotEmpty(value);
//
//     return validateText;
//   }
//
//   static bool isEmpty(Object? object) {
//     if (object == null) return true;
//     if (object is String) return object.isEmpty;
//     if (object is List) return object.isEmpty;
//     if (object is Map) return object.isEmpty;
//     return false;
//   }
//
//   static Tuple2<String, String> getLocalisationCodeAndCountry() {
//     final languageSplit =
//     LocalizationService.instance.currentLanguageCode.split('_');
//     final langCode = languageSplit[0];
//     final countryCode = languageSplit.length > 1 ? languageSplit[1] : '';
//     return Tuple2(langCode, countryCode);
//   }
// }
