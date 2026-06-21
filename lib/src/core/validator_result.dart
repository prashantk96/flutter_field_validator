/// Represents validation result.
class ValidatorResult {
  /// Validation status.
  final bool isValid;

  /// Error message.
  final String? error;

  /// Creates validation result.
  const ValidatorResult({required this.isValid, this.error});
}
