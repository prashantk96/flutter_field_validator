import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// UK Postcode Validator.
class PostcodeValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.postcode.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_postcode');
    }

    return null;
  }
}
