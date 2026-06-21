import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// UK Phone Number Validator.
class UkPhoneValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    final phone = value.replaceAll(' ', '');

    if (!RegexPatterns.ukPhone.hasMatch(phone)) {
      return message ?? ValidationMessages.get('invalid_uk_phone');
    }

    return null;
  }
}
