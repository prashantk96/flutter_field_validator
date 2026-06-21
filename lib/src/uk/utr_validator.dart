import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// UK Unique Taxpayer Reference Validator.
class UtrValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.utr.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_utr');
    }

    return null;
  }
}
