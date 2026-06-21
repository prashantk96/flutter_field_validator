import '../localization/english.dart';
import '../localization/hindi.dart';
import 'validation_locale.dart';

class ValidationMessages {
  static String get(String key) {
    final messages = ValidatorLocale.current == ValidationLocale.hindi
        ? HindiMessages.messages
        : EnglishMessages.messages;

    return messages[key] ?? key;
  }
}
