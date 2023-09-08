// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_decline_member_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AcceptDeclineMemberRequest _$$_AcceptDeclineMemberRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AcceptDeclineMemberRequest(
      requestId: json['request_id'] as int,
      isRequestAccepted: json['isRequestAccepted'] as int,
    );

Map<String, dynamic> _$$_AcceptDeclineMemberRequestToJson(
        _$_AcceptDeclineMemberRequest instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'isRequestAccepted': instance.isRequestAccepted,
    };
