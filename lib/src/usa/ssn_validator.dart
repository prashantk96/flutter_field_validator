import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// US Social Security Number Validator.
class SsnValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.ssn.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_ssn');
    }

    return null;
  }
}
