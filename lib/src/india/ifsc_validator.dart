import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class IfscValidator {
  /// Validates IFSC code.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.ifsc.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_ifsc');
    }

    return null;
  }
}
