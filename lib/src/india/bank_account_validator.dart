import '../core/validation_messages.dart';
import '../utils/regex_patterns.dart';

class BankAccountValidator {
  /// Validates bank account number.
  static String? validate(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    if (!RegexPatterns.bankAccount.hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_bank_account');
    }

    return null;
  }
}
