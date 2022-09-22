import 'package:formz/formz.dart';

enum TextInputValidationError { empty, maxLength }

extension errorMessage on TextInputValidationError {
  String get message {
    switch (this) {
      case TextInputValidationError.empty:
        return 'emptyError';
      case TextInputValidationError.maxLength:
        return 'lengthMax';
      default:
        return '';
    }
  }
}

class TextInput extends FormzInput<String, TextInputValidationError> {
  const TextInput.pure() : super.pure('');

  const TextInput.dirty([String value = '']) : super.dirty(value);

  @override
  TextInputValidationError? validator(String value) {
    if (value.isEmpty == true) return TextInputValidationError.empty;
    return null;
  }
}
