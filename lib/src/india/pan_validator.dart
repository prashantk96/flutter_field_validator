import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class PanValidator {
  /// Validates PAN number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.pan.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_pan');
    }

    return null;
  }
}
