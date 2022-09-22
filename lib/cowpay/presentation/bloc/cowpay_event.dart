part of 'cowpay_bloc.dart';

abstract class CowpayEvent {
  const CowpayEvent();
}

class ChangeTabCurrentIndexEvent extends CowpayEvent {
  final int index;

  ChangeTabCurrentIndexEvent(this.index);
}

class CowpayStarted extends CowpayEvent {
  final String merchantReferenceId;
  final String customerMerchantProfileId;
  final String customerEmail;
  final String customerMobile;
  final String amount;
  final String description;
  final String customerName;

  const CowpayStarted(
      {required this.merchantReferenceId,
      required this.customerMerchantProfileId,
      required this.customerEmail,
      required this.customerMobile,
      required this.amount,
      required this.customerName,
      required this.description});
}

class ClearStatus extends CowpayEvent {}

//region Fawry

class ChargeFawry extends CowpayEvent {
  @override
  List<Object> get props => [];
}

//endregion

//region Credit Card

class ChargeCreditCardValidation extends CowpayEvent {
  @override
  List<Object> get props => [];
}

class CreditCardNumberChange extends CowpayEvent {
  const CreditCardNumberChange(this.creditCardNumber);

  final String creditCardNumber;
}

class CreditCardNameChange extends CowpayEvent {
  const CreditCardNameChange(this.creditCardHolderName);

  final String creditCardHolderName;
}

class CreditCardExpiryMonthChange extends CowpayEvent {
  const CreditCardExpiryMonthChange(this.creditCardExpiryMonth);

  final String creditCardExpiryMonth;
}

class CreditCardExpiryYearChange extends CowpayEvent {
  const CreditCardExpiryYearChange(this.creditCardExpiryYear);

  final String creditCardExpiryYear;
}

class CreditCardCvvChange extends CowpayEvent {
  const CreditCardCvvChange(this.creditCardCvv);

  final String creditCardCvv;
}

//endregion
