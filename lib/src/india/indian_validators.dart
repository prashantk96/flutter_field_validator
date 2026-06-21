import 'aadhaar_validator.dart';
import 'bank_account_validator.dart';
import 'driving_license_validator.dart';
import 'gst_validator.dart';
import 'ifsc_validator.dart';
import 'pan_validator.dart';
import 'passport_validator.dart';
import 'pincode_validator.dart';
import 'upi_validator.dart';
import 'vehicle_number_validator.dart';
import 'voter_id_validator.dart';

/// Collection of India-specific validators.
class IndianValidators {
  /// PAN Validator
  static final pan = PanValidator.validate;

  /// Aadhaar Validator
  static final aadhaar = AadhaarValidator.validate;

  /// GST Validator
  static final gst = GstValidator.validate;

  /// IFSC Validator
  static final ifsc = IfscValidator.validate;

  /// UPI Validator
  static final upi = UpiValidator.validate;

  /// PIN Code Validator
  static final pincode = PincodeValidator.validate;

  /// Passport Validator
  static final passport = PassportValidator.validate;

  /// Voter ID Validator
  static final voterId = VoterIdValidator.validate;

  /// Vehicle Number Validator
  static final vehicleNumber = VehicleNumberValidator.validate;

  /// Driving License Validator
  static final drivingLicense = DrivingLicenseValidator.validate;

  /// Bank Account Validator
  static final bankAccount = BankAccountValidator.validate;
}
