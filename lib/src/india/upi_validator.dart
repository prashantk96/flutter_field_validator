import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class UpiValidator {
  /// Validates UPI ID.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.upi.hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_upi');
    }

    return null;
  }
}
