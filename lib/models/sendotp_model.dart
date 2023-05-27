class SendOTPModel {
  bool? status;
  int? statusCode;
  String? message;
  Data? data;

  SendOTPModel({this.status, this.statusCode, this.message, this.data});

  SendOTPModel.fromJson(Map<String, dynamic> json) {
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
  List<Entity>? entity;

  Data({this.entity});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['entity'] != null) {
      entity = <Entity>[];
      json['entity'].forEach((v) {
        entity!.add(new Entity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.entity != null) {
      data['entity'] = this.entity!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Entity {
  String? referenceId;
  String? destination;
  String? statusId;
  String? status;

  Entity({this.referenceId, this.destination, this.statusId, this.status});

  Entity.fromJson(Map<String, dynamic> json) {
    referenceId = json['reference_id'];
    destination = json['destination'];
    statusId = json['status_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reference_id'] = this.referenceId;
    data['destination'] = this.destination;
    data['status_id'] = this.statusId;
    data['status'] = this.status;
    return data;
  }
}
