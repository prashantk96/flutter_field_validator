import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// US EIN Validator.
class EinValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.ein.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_ein');
    }

    return null;
  }
}
