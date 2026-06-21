import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class GstValidator {
  /// Validates GST number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.gst.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_gst');
    }

    return null;
  }
}
