import 'package:flutter/services.dart';

/// Collection of reusable input formatters.
class ValidatorInputFormatters {
  ValidatorInputFormatters._();

  /// Generic regex formatter
  static TextInputFormatter regex(String pattern) {
    final regex = RegExp(pattern);

    return TextInputFormatter.withFunction((oldValue, newValue) {
      if (newValue.text.isEmpty) {
        return newValue;
      }

      return regex.hasMatch(newValue.text) ? newValue : oldValue;
    });
  }

  /// =========================
  /// Common
  /// =========================

  static final noSpaces = regex(r'^\S*$');

  static final numbersOnly = regex(r'^\d*$');

  static final alphabetsOnly = regex(r'^[a-zA-Z]*$');

  static final alphabetsWithSpaces = regex(r'^[a-zA-Z ]*$');

  static final alphaNumeric = regex(r'^[a-zA-Z0-9]*$');

  static final alphaNumericWithSpaces = regex(r'^[a-zA-Z0-9 ]*$');

  static final noSpecialCharacters = regex(r'^[a-zA-Z0-9 ]*$');

  static final decimalNumbers = regex(r'^\d*\.?\d*$');

  static final percentage = regex(r'^\d{0,3}(\.\d{0,2})?$');

  /// =========================
  /// Case Formatters
  /// =========================

  static final upperCase = TextInputFormatter.withFunction((
    oldValue,
    newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  });

  static final lowerCase = TextInputFormatter.withFunction((
    oldValue,
    newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toLowerCase());
  });

  static final titleCase = TextInputFormatter.withFunction((
    oldValue,
    newValue,
  ) {
    final words = newValue.text.split(' ');

    final text = words
        .map(
          (e) => e.isEmpty
              ? ''
              : '${e[0].toUpperCase()}${e.substring(1).toLowerCase()}',
        )
        .join(' ');

    return newValue.copyWith(text: text);
  });

  /// =========================
  /// Contact
  /// =========================

  static final phone = regex(r'^\+?[0-9]*$');

  static final email = regex(r'^[a-zA-Z0-9@._\-+]*$');

  static final website = regex(r'^[a-zA-Z0-9:/._\-]*$');

  /// =========================
  /// India
  /// =========================

  static final pan = regex(r'^[A-Za-z0-9]*$');

  static final aadhaar = regex(r'^\d*$');

  static final gst = regex(r'^[A-Za-z0-9]*$');

  static final ifsc = regex(r'^[A-Za-z0-9]*$');

  static final upi = regex(r'^[a-zA-Z0-9._@\-]*$');

  static final pincode = regex(r'^\d*$');

  static final voterId = regex(r'^[A-Za-z0-9]*$');

  static final passport = regex(r'^[A-Za-z0-9]*$');

  static final vehicleNumber = regex(r'^[A-Za-z0-9]*$');

  static final drivingLicense = regex(r'^[A-Za-z0-9]*$');

  static final bankAccount = regex(r'^\d*$');

  /// =========================
  /// USA
  /// =========================

  static final ssn = regex(r'^[0-9\-]*$');

  static final zipCode = regex(r'^[0-9\-]*$');

  static final ein = regex(r'^[0-9\-]*$');

  static final usPhone = regex(r'^\+?[0-9]*$');

  /// =========================
  /// UK
  /// =========================

  static final postcode = regex(r'^[A-Za-z0-9]*$');

  static final nino = regex(r'^[A-Za-z0-9]*$');

  static final utr = regex(r'^\d*$');

  static final ukPhone = regex(r'^\+?[0-9]*$');

  /// =========================
  /// Length Formatters
  /// =========================

  static TextInputFormatter maxLength(int length) {
    return LengthLimitingTextInputFormatter(length);
  }

  static final mobileLength = LengthLimitingTextInputFormatter(10);

  static final aadhaarLength = LengthLimitingTextInputFormatter(12);

  static final pincodeLength = LengthLimitingTextInputFormatter(6);

  static final panLength = LengthLimitingTextInputFormatter(10);

  static final gstLength = LengthLimitingTextInputFormatter(15);

  static final ifscLength = LengthLimitingTextInputFormatter(11);

  static final voterIdLength = LengthLimitingTextInputFormatter(10);

  static final passportLength = LengthLimitingTextInputFormatter(8);

  static final ssnLength = LengthLimitingTextInputFormatter(11);

  static final zipCodeLength = LengthLimitingTextInputFormatter(10);

  static final einLength = LengthLimitingTextInputFormatter(10);

  static final utrLength = LengthLimitingTextInputFormatter(10);

  static final ninoLength = LengthLimitingTextInputFormatter(9);

  /// =========================
  /// Ready-to-use Formatter Sets
  /// =========================

  static final mobileFormatters = [numbersOnly, mobileLength];

  static final aadhaarFormatters = [aadhaar, aadhaarLength];

  static final panFormatters = [pan, upperCase, panLength];

  static final gstFormatters = [gst, upperCase, gstLength];

  static final ifscFormatters = [ifsc, upperCase, ifscLength];

  static final pincodeFormatters = [pincode, pincodeLength];

  static final voterIdFormatters = [voterId, upperCase, voterIdLength];

  static final passportFormatters = [passport, upperCase, passportLength];

  static final bankAccountFormatters = [bankAccount];

  static final upiFormatters = [upi];
}
