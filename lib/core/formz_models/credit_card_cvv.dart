import 'package:formz/formz.dart';

enum CreditCardCvvError { empty, lengthMin, lengthMax, format, whiteSpace }

extension errorMessage on CreditCardCvvError {
  String get message {
    switch (this) {
      case CreditCardCvvError.empty:
        return 'cvvEmptyError';
      case CreditCardCvvError.lengthMin:
        return 'lengthMin';
      case CreditCardCvvError.lengthMax:
        return 'lengthMax';
      case CreditCardCvvError.format:
        return 'invalidFormat';
      default:
        return '';
    }
  }
}

class CreditCardCvv extends FormzInput<String, CreditCardCvvError> {
  const CreditCardCvv.pure() : super.pure('');

  const CreditCardCvv.dirty([String value = '']) : super.dirty(value);

  @override
  CreditCardCvvError? validator(String value) {
    if (value.trim().isEmpty) return CreditCardCvvError.empty;
    if (value.length < 3) return CreditCardCvvError.lengthMin;
    if (value.length > 3) return CreditCardCvvError.lengthMax;
    if (value.contains(" ")) return CreditCardCvvError.whiteSpace;
    if (!RegExp(r'^[0-9]{03}$').hasMatch(value))
      return CreditCardCvvError.format;
    return null;
  }
}
