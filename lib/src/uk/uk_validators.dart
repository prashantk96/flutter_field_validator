import 'nino_validator.dart';
import 'postcode_validator.dart';
import 'uk_phone_validator.dart';
import 'utr_validator.dart';

/// Collection of UK-specific validators.
class UKValidators {
  /// Postcode Validator
  static final postcode = PostcodeValidator.validate;

  /// National Insurance Number Validator
  static final nino = NinoValidator.validate;

  /// UTR Validator
  static final utr = UtrValidator.validate;

  /// UK Phone Validator
  static final phone = UkPhoneValidator.validate;
}
