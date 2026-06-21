import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

/// URL validation utility.
class UrlValidator {
  /// Validates URL.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.url.hasMatch(value.trim())) {
      return message ?? ValidationMessages.get('invalid_url');
    }

    return null;
  }
}
