import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// UK National Insurance Number Validator.
class NinoValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.nino.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_nino');
    }

    return null;
  }
}
