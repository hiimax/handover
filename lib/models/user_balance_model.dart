class UserBalanceModel {
  bool? status;
  int? statusCode;
  String? message;
  Data? data;

  UserBalanceModel({this.status, this.statusCode, this.message, this.data});

  UserBalanceModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? currency;
  String? balance;

  Data({this.currency, this.balance});

  Data.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency'] = this.currency;
    data['balance'] = this.balance;
    return data;
  }
}
