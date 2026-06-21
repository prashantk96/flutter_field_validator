import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class PincodeValidator {
  /// Validates PIN code.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.pincode.hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_pincode');
    }

    return null;
  }
}
