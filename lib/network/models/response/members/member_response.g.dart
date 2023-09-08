// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberResponse _$$_MemberResponseFromJson(Map<String, dynamic> json) =>
    _$_MemberResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      member: Member.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemberResponseToJson(_$_MemberResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'member': instance.member,
    };
