import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// Mobile number validation utility.
class MobileValidator {
  /// Validates mobile number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.mobile.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_mobile');
    }

    return null;
  }
}
