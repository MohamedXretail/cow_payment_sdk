import 'package:formz/formz.dart';

enum CreditCardExpiryMonthError {
  empty,
  lengthMin,
  lengthMax,
  format,
  whiteSpace
}

extension errorMessage on CreditCardExpiryMonthError {
  String get message {
    switch (this) {
      case CreditCardExpiryMonthError.empty:
        return 'creditCardExpiryMonthEmptyError';
      case CreditCardExpiryMonthError.lengthMin:
        return 'lengthMin';
      case CreditCardExpiryMonthError.lengthMax:
        return 'lengthMax';
      case CreditCardExpiryMonthError.format:
        return 'invalidFormat';
      default:
        return '';
    }
  }
}

class CreditCardExpiryMonth
    extends FormzInput<String, CreditCardExpiryMonthError> {
  const CreditCardExpiryMonth.pure() : super.pure('');

  const CreditCardExpiryMonth.dirty([String value = '']) : super.dirty(value);

  @override
  CreditCardExpiryMonthError? validator(String value) {
    if (value.trim().isEmpty) return CreditCardExpiryMonthError.empty;
    if (value.length < 2) return CreditCardExpiryMonthError.lengthMin;
    if (value.length > 2) return CreditCardExpiryMonthError.lengthMax;
    if (value.contains(" ")) return CreditCardExpiryMonthError.whiteSpace;
    if (!RegExp(r'^0[1-9]|1[0-2]$').hasMatch(value))
      return CreditCardExpiryMonthError.format;
    return null;
  }
}
