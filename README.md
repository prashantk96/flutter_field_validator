# Flutter Field Validator

A powerful Flutter validation package with:

- Global Validators
- Indian Validators
- USA Validators
- UK Validators
- Credit Card Validation
- Password Validation
- Email Validation
- GST Validation
- PAN Validation
- Aadhaar Validation
- UPI Validation

## Installation

```yaml
dependencies:
  flutter_field_validator: ^1.0.0
```

## Import

```dart
import 'package:flutter_field_validator/flutter_field_validator.dart';
```

## Global Validators

```dart
validator: Validators.email
```

```dart
validator: Validators.password
```

```dart
validator: Validators.mobile
```

## Indian Validators

```dart
validator: IndianValidators.pan
```

```dart
validator: IndianValidators.aadhaar
```

```dart
validator: IndianValidators.gst
```

```dart
validator: IndianValidators.upi
```

## USA Validators

```dart
validator: USValidators.ssn
```

```dart
validator: USValidators.zipCode
```

## UK Validators

```dart
validator: UKValidators.postcode
```

```dart
validator: UKValidators.nino
```

[![Flutter Package CI](https://github.com/prashantk96/flutter_field_validator/actions/workflows/flutter.yml/badge.svg)](https://github.com/prashantk96/flutter_field_validator/actions/workflows/flutter.yml)

## License

MIT