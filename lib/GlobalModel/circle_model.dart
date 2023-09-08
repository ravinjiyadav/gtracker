// ignore_for_file: unnecessary_new

class CircleList {
  int? code;
  String? message;
  Data? data;

  CircleList({this.code, this.message, this.data});

  CircleList.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Circle>? circle;

  Data({this.circle});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['circle'] != null) {
      circle = <Circle>[];
      json['circle'].forEach((v) {
        circle!.add(Circle.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (circle != null) {
      data['circle'] = circle!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Circle {
  int? id;
  String? name;
  int? appUserId;
  String? createdAt;
  String? updatedAt;

  Circle({this.id, this.name, this.appUserId, this.createdAt, this.updatedAt});

  Circle.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    appUserId = json['app_user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['app_user_id'] = appUserId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
