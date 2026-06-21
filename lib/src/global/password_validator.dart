import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// Password validation utility.
class PasswordValidator {
  /// Validates password.
  ///
  /// Minimum:
  /// - 8 characters
  /// - 1 uppercase
  /// - 1 lowercase
  /// - 1 number
  static String? validate(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.password.hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_password');
    }

    return null;
  }
}
