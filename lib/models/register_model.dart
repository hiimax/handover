class RegisterModel {
  bool? status;
  String? message;
  Data? data;

  RegisterModel({this.status, this.message, this.data});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? country;
  String? deviceId;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? apiToken;

  Data(
      {this.name,
      this.country,
      this.deviceId,
      this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.apiToken});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
    deviceId = json['device_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    apiToken = json['api_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['country'] = this.country;
    data['device_id'] = this.deviceId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['api_token'] = this.apiToken;
    return data;
  }
}
