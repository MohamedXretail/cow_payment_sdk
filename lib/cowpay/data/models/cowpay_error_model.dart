class CowpayErrorModel {
  bool? success;
  int? statusCode;
  String? statusDescription;
  String? type;
  Object? errors;

  CowpayErrorModel(
      {this.success,
        this.statusCode,
        this.statusDescription,
        this.type,
        this.errors});

  CowpayErrorModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['status_code'];
    statusDescription = json['status_description'];
    type = json['type'];
    errors = json['errors'];
  }
}