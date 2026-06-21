import '../core/validation_messages.dart';
import '../core/validator.dart';
import 'credit_card_validator.dart';
import 'cvv_validator.dart';
import 'email_validator.dart';
import 'expiry_date_validator.dart';
import 'mobile_validator.dart';
import 'password_validator.dart';
import 'url_validator.dart';

class Validators {
  /// Required validator.
  static String? required(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? ValidationMessages.get('required');
    }

    return null;
  }

  /// Email validator.
  static String? email(String? value) {
    return EmailValidator.validate(value);
  }

  /// Mobile validator.
  static String? mobile(String? value) {
    return MobileValidator.validate(value);
  }

  /// Password validator.
  static String? password(String? value) {
    return PasswordValidator.validate(value);
  }

  /// URL validator.
  static String? url(String? value) {
    return UrlValidator.validate(value);
  }

  /// Credit Card validator.
  static String? creditCard(String? value) {
    return CreditCardValidator.validate(value);
  }

  /// CVV validator.
  static String? cvv(String? value) {
    return CvvValidator.validate(value);
  }

  /// Expiry Date validator.
  static String? expiryDate(String? value) {
    return ExpiryDateValidator.validate(value);
  }

  /// Minimum length validator.
  static Validator minLength(int length, {String? message}) {
    return (value) {
      if ((value ?? '').length < length) {
        return message ?? '${ValidationMessages.get('min_length')} ($length)';
      }

      return null;
    };
  }

  /// Maximum length validator.
  static Validator maxLength(int length, {String? message}) {
    return (value) {
      if ((value ?? '').length > length) {
        return message ?? '${ValidationMessages.get('max_length')} ($length)';
      }

      return null;
    };
  }

  /// Numbers only validator.
  static String? numeric(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_numeric');
    }

    return null;
  }

  /// Alphabets only validator.
  static String? alphabet(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
      return message ?? ValidationMessages.get('invalid_alphabet');
    }

    return null;
  }

  /// Combines multiple validators.
  static Validator combine(List<Validator> validators) {
    return (value) {
      for (final validator in validators) {
        final result = validator(value);

        if (result != null) {
          return result;
        }
      }

      return null;
    };
  }
}
