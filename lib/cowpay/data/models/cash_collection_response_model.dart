class CashCollectionResponseModel {
  bool? success;
  int? statusCode;
  String? statusDescription;
  String? type;
  int? cowpayReferenceId;
  String? merchantReferenceId;
  String? paymentGatewayReferenceId;

  CashCollectionResponseModel(
      {this.success,
      this.statusCode,
      this.statusDescription,
      this.type,
      this.cowpayReferenceId,
      this.merchantReferenceId,
      this.paymentGatewayReferenceId});

  CashCollectionResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['status_code'];
    statusDescription = json['status_description'];
    type = json['type'];
    cowpayReferenceId = json['cowpay_reference_id'];
    merchantReferenceId = json['merchant_reference_id'];
    paymentGatewayReferenceId = json['payment_gateway_reference_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status_code'] = this.statusCode;
    data['status_description'] = this.statusDescription;
    data['type'] = this.type;
    data['cowpay_reference_id'] = this.cowpayReferenceId;
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['payment_gateway_reference_id'] = this.paymentGatewayReferenceId;
    return data;
  }
}
