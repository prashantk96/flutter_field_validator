import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// US ZIP Code Validator.
class ZipCodeValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.zipCode.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_zip_code');
    }

    return null;
  }
}
