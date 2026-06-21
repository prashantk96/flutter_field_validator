import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class VehicleNumberValidator {
  /// Validates vehicle number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    final vehicle = value.replaceAll(' ', '').toUpperCase();

    if (!RegexPatterns.vehicleNumber.hasMatch(vehicle)) {
      return message ?? ValidationMessages.get('invalid_vehicle');
    }

    return null;
  }
}
