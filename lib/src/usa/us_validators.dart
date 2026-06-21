import 'ein_validator.dart';
import 'ssn_validator.dart';
import 'us_phone_validator.dart';
import 'zip_code_validator.dart';

/// Collection of USA-specific validators.
class USValidators {
  /// SSN Validator
  static final ssn = SsnValidator.validate;

  /// ZIP Code Validator
  static final zipCode = ZipCodeValidator.validate;

  /// EIN Validator
  static final ein = EinValidator.validate;

  /// US Phone Validator
  static final phone = UsPhoneValidator.validate;
}
