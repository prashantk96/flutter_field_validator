import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class DrivingLicenseValidator {
  /// Validates driving license.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.drivingLicense.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_driving_license');
    }

    return null;
  }
}
