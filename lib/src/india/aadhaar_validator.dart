import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class AadhaarValidator {
  /// Validates Aadhaar number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.aadhaar.hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_aadhaar');
    }

    return null;
  }
}
