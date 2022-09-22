import 'package:formz/formz.dart';

enum CreditCardNumberError { empty, lengthMin, lengthMax, format, whiteSpace }

extension errorMessage on CreditCardNumberError {
  String get message {
    switch (this) {
      case CreditCardNumberError.empty:
        return 'creditCardNumberEmptyError';
      case CreditCardNumberError.lengthMin:
        return 'lengthMin';
      case CreditCardNumberError.lengthMax:
        return 'lengthMax';
      case CreditCardNumberError.format:
        return 'invalidFormat';
      default:
        return '';
    }
  }
}

class CreditCardNumber extends FormzInput<String, CreditCardNumberError> {
  const CreditCardNumber.pure() : super.pure('');

  const CreditCardNumber.dirty([String value = '']) : super.dirty(value);

  @override
  CreditCardNumberError? validator(String value) {
    if (value.trim().isEmpty) return CreditCardNumberError.empty;
    if (value.length < 16) return CreditCardNumberError.lengthMin;
    if (value.length > 16) return CreditCardNumberError.lengthMax;
    if (value.contains(" ")) return CreditCardNumberError.whiteSpace;
    if (!RegExp(r'^[0-9]{16}$').hasMatch(value))
      return CreditCardNumberError.format;
    return null;
  }
}
