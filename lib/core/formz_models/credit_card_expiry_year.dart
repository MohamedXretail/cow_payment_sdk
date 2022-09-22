import 'package:formz/formz.dart';

enum CreditCardExpiryYearError {
  empty,
  lengthMin,
  lengthMax,
  format,
  whiteSpace
}

extension errorMessage on CreditCardExpiryYearError {
  String get message {
    switch (this) {
      case CreditCardExpiryYearError.empty:
        return 'creditCardExpiryYearEmptyError';
      case CreditCardExpiryYearError.lengthMin:
        return 'lengthMin';
      case CreditCardExpiryYearError.lengthMax:
        return 'lengthMax';
      case CreditCardExpiryYearError.format:
        return 'invalidFormat';
      default:
        return '';
    }
  }
}

class CreditCardExpiryYear
    extends FormzInput<String, CreditCardExpiryYearError> {
  const CreditCardExpiryYear.pure() : super.pure('');

  const CreditCardExpiryYear.dirty([String value = '']) : super.dirty(value);

  @override
  CreditCardExpiryYearError? validator(String value) {
    if (value.trim().isEmpty) return CreditCardExpiryYearError.empty;
    if (value.length < 2) return CreditCardExpiryYearError.lengthMin;
    if (value.length > 2) return CreditCardExpiryYearError.lengthMax;
    if (value.contains(" ")) return CreditCardExpiryYearError.whiteSpace;
    if (!RegExp(r'^([2-9]\d|\d{2,})$$').hasMatch(value))
      return CreditCardExpiryYearError.format;
    return null;
  }
}
