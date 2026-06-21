class RegexPatterns {
  /// =========================
  /// Global
  /// =========================

  /// Minimum 8 chars, 1 uppercase, 1 lowercase, 1 number
  static final password = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$',
  );

  /// Email
  static final email = RegExp(
    r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$',
  );

  /// Indian Mobile Number
  static final mobile = RegExp(r'^[6-9]\d{9}$');

  /// URL
  static final url = RegExp(r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$');

  /// =========================
  /// India
  /// =========================

  /// PAN
  static final pan = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]$');

  /// Aadhaar
  static final aadhaar = RegExp(r'^\d{12}$');

  /// GST
  static final gst = RegExp(
    r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][A-Z0-9]Z[A-Z0-9]$',
  );

  /// IFSC
  static final ifsc = RegExp(r'^[A-Z]{4}0[A-Z0-9]{6}$');

  /// UPI
  static final upi = RegExp(r'^[a-zA-Z0-9._-]{2,256}@[a-zA-Z]{2,64}$');

  /// PIN Code
  static final pincode = RegExp(r'^[1-9][0-9]{5}$');

  /// Passport
  static final passport = RegExp(r'^[A-Z][0-9]{7}$');

  /// Voter ID
  static final voterId = RegExp(r'^[A-Z]{3}[0-9]{7}$');

  /// Vehicle Number
  /// Example: MH04AB1234
  static final vehicleNumber = RegExp(
    r'^[A-Z]{2}[0-9]{1,2}[A-Z]{1,3}[0-9]{4}$',
  );

  /// Driving License
  /// Example: MH1420110012345
  static final drivingLicense = RegExp(r'^[A-Z]{2}[0-9]{2}[0-9]{11}$');

  /// Bank Account
  static final bankAccount = RegExp(r'^[0-9]{9,18}$');

  /// =========================
  /// USA
  /// =========================

  /// SSN
  static final ssn = RegExp(r'^\d{3}-\d{2}-\d{4}$');

  /// ZIP Code
  static final zipCode = RegExp(r'^\d{5}(-\d{4})?$');

  /// EIN
  static final ein = RegExp(r'^\d{2}-\d{7}$');

  /// US Phone
  static final usPhone = RegExp(r'^(?:\+1)?[2-9]\d{9}$');

  /// =========================
  /// UK
  /// =========================

  /// UK Postcode
  static final postcode = RegExp(
    r'^[A-Z]{1,2}[0-9][A-Z0-9]?[0-9][A-Z]{2}$',
    caseSensitive: false,
  );

  /// National Insurance Number
  static final nino = RegExp(r'^[A-CEGHJ-PR-TW-Z]{2}\d{6}[A-D]$');

  /// UK Phone
  static final ukPhone = RegExp(r'^(?:0|\+44)7\d{9}$');

  /// UTR
  static final utr = RegExp(r'^\d{10}$');
}
