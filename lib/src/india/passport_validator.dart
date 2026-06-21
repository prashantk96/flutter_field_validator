import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class PassportValidator {
  /// Validates passport number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.passport.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_passport');
    }

    return null;
  }
}
