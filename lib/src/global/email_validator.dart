import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// Email validation utility.
class EmailValidator {
  /// Validates email address.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.email.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_email');
    }

    return null;
  }
}
