// ignore_for_file: file_names
class MemberList {
  int? code;
  String? message;
  Data? data;

  MemberList({this.code, this.message, this.data});
  MemberList.fromJson(Map<String, dynamic> json) {
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
  List<Members>? members;

  Data({this.members});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(Members.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (members != null) {
      data['members'] = members!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Members {
  int? id;
  bool? isParent;
  String? fullName;
  String? photo;

  Members({this.id, this.isParent, this.fullName, required this.photo});

  Members.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isParent = json['isParent'];
    fullName = json['full_name'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['isParent'] = isParent;
    data['full_name'] = fullName;
    data['photo'] = photo;
    return data;
  }
}
