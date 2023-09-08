// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      redirect: json['redirect'] as String?,
      data: json['data'] == null
          ? null
          : GUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'redirect': instance.redirect,
      'data': instance.data,
    };

_$_GUser _$$_GUserFromJson(Map<String, dynamic> json) => _$_GUser(
      id: json['id'] as int,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      dob: json['dob'] as String?,
      relation: json['relation'] as String?,
      email: json['email'] as String?,
      countryCode: json['country_code'] as String,
      mobile: json['mobile'] as String,
      otp: json['otp'],
      mpin: json['mpin'] as int? ?? 0,
      circleId: json['circle_id'] as int?,
      deviceId: json['device_id'] as int?,
      parentId: json['parent_id'] as int? ?? 0,
      locationId: json['location_id'] as int?,
      isAdmin: json['is_admin'] as int? ?? 0,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$_GUserToJson(_$_GUser instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'dob': instance.dob,
      'relation': instance.relation,
      'email': instance.email,
      'country_code': instance.countryCode,
      'mobile': instance.mobile,
      'otp': instance.otp,
      'mpin': instance.mpin,
      'circle_id': instance.circleId,
      'device_id': instance.deviceId,
      'parent_id': instance.parentId,
      'location_id': instance.locationId,
      'is_admin': instance.isAdmin,
      'device_token': instance.deviceToken,
    };

_$_GLink _$$_GLinkFromJson(Map<String, dynamic> json) => _$_GLink(
      aboutUs: json['aboutus'] as String?,
      privacy: json['privacy'] as String?,
      terms: json['terms'] as String?,
      faq: json['faq'] as String?,
    );

Map<String, dynamic> _$$_GLinkToJson(_$_GLink instance) => <String, dynamic>{
      'aboutus': instance.aboutUs,
      'privacy': instance.privacy,
      'terms': instance.terms,
      'faq': instance.faq,
    };
