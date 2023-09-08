// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_request_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberRequests _$MemberRequestsFromJson(Map<String, dynamic> json) {
  return _MemberRequests.fromJson(json);
}

/// @nodoc
mixin _$MemberRequests {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "circle_id")
  int? get circleId => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  int? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "place_id")
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: "sender_name")
  String? get senderName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberRequestsCopyWith<MemberRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberRequestsCopyWith<$Res> {
  factory $MemberRequestsCopyWith(
          MemberRequests value, $Res Function(MemberRequests) then) =
      _$MemberRequestsCopyWithImpl<$Res, MemberRequests>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "circle_id") int? circleId,
      @JsonKey(name: "device_id") int? deviceId,
      @JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "sender_name") String? senderName});
}

/// @nodoc
class _$MemberRequestsCopyWithImpl<$Res, $Val extends MemberRequests>
    implements $MemberRequestsCopyWith<$Res> {
  _$MemberRequestsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? circleId = freezed,
    Object? deviceId = freezed,
    Object? placeId = freezed,
    Object? senderName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      circleId: freezed == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberRequestsCopyWith<$Res>
    implements $MemberRequestsCopyWith<$Res> {
  factory _$$_MemberRequestsCopyWith(
          _$_MemberRequests value, $Res Function(_$_MemberRequests) then) =
      __$$_MemberRequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "circle_id") int? circleId,
      @JsonKey(name: "device_id") int? deviceId,
      @JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "sender_name") String? senderName});
}

/// @nodoc
class __$$_MemberRequestsCopyWithImpl<$Res>
    extends _$MemberRequestsCopyWithImpl<$Res, _$_MemberRequests>
    implements _$$_MemberRequestsCopyWith<$Res> {
  __$$_MemberRequestsCopyWithImpl(
      _$_MemberRequests _value, $Res Function(_$_MemberRequests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? circleId = freezed,
    Object? deviceId = freezed,
    Object? placeId = freezed,
    Object? senderName = freezed,
  }) {
    return _then(_$_MemberRequests(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      circleId: freezed == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberRequests extends _MemberRequests {
  const _$_MemberRequests(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") this.userId = -1,
      @JsonKey(name: "photo") this.photo,
      @JsonKey(name: "circle_id") this.circleId,
      @JsonKey(name: "device_id") this.deviceId,
      @JsonKey(name: "place_id") this.placeId,
      @JsonKey(name: "sender_name") this.senderName})
      : super._();

  factory _$_MemberRequests.fromJson(Map<String, dynamic> json) =>
      _$$_MemberRequestsFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "photo")
  final String? photo;
  @override
  @JsonKey(name: "circle_id")
  final int? circleId;
  @override
  @JsonKey(name: "device_id")
  final int? deviceId;
  @override
  @JsonKey(name: "place_id")
  final int? placeId;
  @override
  @JsonKey(name: "sender_name")
  final String? senderName;

  @override
  String toString() {
    return 'MemberRequests(id: $id, userId: $userId, photo: $photo, circleId: $circleId, deviceId: $deviceId, placeId: $placeId, senderName: $senderName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberRequests &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, photo, circleId, deviceId, placeId, senderName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberRequestsCopyWith<_$_MemberRequests> get copyWith =>
      __$$_MemberRequestsCopyWithImpl<_$_MemberRequests>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberRequestsToJson(
      this,
    );
  }
}

abstract class _MemberRequests extends MemberRequests {
  const factory _MemberRequests(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "user_id") final int userId,
          @JsonKey(name: "photo") final String? photo,
          @JsonKey(name: "circle_id") final int? circleId,
          @JsonKey(name: "device_id") final int? deviceId,
          @JsonKey(name: "place_id") final int? placeId,
          @JsonKey(name: "sender_name") final String? senderName}) =
      _$_MemberRequests;
  const _MemberRequests._() : super._();

  factory _MemberRequests.fromJson(Map<String, dynamic> json) =
      _$_MemberRequests.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "photo")
  String? get photo;
  @override
  @JsonKey(name: "circle_id")
  int? get circleId;
  @override
  @JsonKey(name: "device_id")
  int? get deviceId;
  @override
  @JsonKey(name: "place_id")
  int? get placeId;
  @override
  @JsonKey(name: "sender_name")
  String? get senderName;
  @override
  @JsonKey(ignore: true)
  _$$_MemberRequestsCopyWith<_$_MemberRequests> get copyWith =>
      throw _privateConstructorUsedError;
}
