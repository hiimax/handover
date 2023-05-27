class UserPropertyModel {
  bool? status;
  int? statusCode;
  String? message;
  List<UserPropertyData>? data;

  UserPropertyModel({this.status, this.statusCode, this.message, this.data});

  UserPropertyModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <UserPropertyData>[];
      json['data'].forEach((v) {
        data!.add(new UserPropertyData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserPropertyData {
  int? id;
  String? propertyType;
  String? propertyLocation;
  String? propertyPrice;
  String? propertyDescription;
  List<String>? propertyFeatures;
  String? propertyName;
  List<String>? propertyImages;
  String? propertyStatus;
  String? updatedAt;

  UserPropertyData(
      {this.id,
      this.propertyType,
      this.propertyLocation,
      this.propertyPrice,
      this.propertyDescription,
      this.propertyFeatures,
      this.propertyName,
      this.propertyImages,
      this.propertyStatus,
      this.updatedAt});

  UserPropertyData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyType = json['property_type'];
    propertyLocation = json['property_location'];
    propertyPrice = json['property_price'];
    propertyDescription = json['property_description'];
    // propertyFeatures = json['property_features'].cast<String>();
    propertyName = json['property_name'];
    propertyImages = json['property_images'].cast<String>();
    propertyStatus = json['property_status'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['property_type'] = this.propertyType;
    data['property_location'] = this.propertyLocation;
    data['property_price'] = this.propertyPrice;
    data['property_description'] = this.propertyDescription;
    data['property_features'] = this.propertyFeatures;
    data['property_name'] = this.propertyName;
    data['property_images'] = this.propertyImages;
    data['property_status'] = this.propertyStatus;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
