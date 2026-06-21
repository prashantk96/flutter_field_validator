import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// US Phone Number Validator.
class UsPhoneValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    final phone = value.replaceAll(' ', '');

    if (!RegexPatterns.usPhone.hasMatch(phone)) {
      return message ?? ValidationMessages.get('invalid_us_phone');
    }

    return null;
  }
}
