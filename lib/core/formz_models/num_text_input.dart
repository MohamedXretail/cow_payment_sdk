import 'package:formz/formz.dart';

enum NumTextInputValidationError { empty, format }

extension errorMessage on NumTextInputValidationError {
  String get message {
    switch (this) {
      case NumTextInputValidationError.empty:
        return 'emptyError';
      case NumTextInputValidationError.format:
        return 'formatError';
      default:
        return '';
    }
  }
}

class NumTextInput extends FormzInput<String, NumTextInputValidationError> {
  const NumTextInput.pure() : super.pure('');

  const NumTextInput.dirty([String value = '']) : super.dirty(value);

  @override
  NumTextInputValidationError? validator(String value) {
    if (value.isEmpty) return NumTextInputValidationError.empty;
    if (!RegExp(r'^[0-9]+$').hasMatch(value))
      return NumTextInputValidationError.format;
    return null;
  }
}
