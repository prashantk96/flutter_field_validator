import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class VoterIdValidator {
  /// Validates voter ID.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.voterId.hasMatch(value.toUpperCase())) {
      return message ?? ValidationMessages.get('invalid_voter_id');
    }

    return null;
  }
}
