// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberResponse _$MemberResponseFromJson(Map<String, dynamic> json) {
  return _MemberResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  Member get member => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberResponseCopyWith<MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberResponseCopyWith<$Res> {
  factory $MemberResponseCopyWith(
          MemberResponse value, $Res Function(MemberResponse) then) =
      _$MemberResponseCopyWithImpl<$Res, MemberResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "member") Member member});

  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class _$MemberResponseCopyWithImpl<$Res, $Val extends MemberResponse>
    implements $MemberResponseCopyWith<$Res> {
  _$MemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? member = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberResponseCopyWith<$Res>
    implements $MemberResponseCopyWith<$Res> {
  factory _$$_MemberResponseCopyWith(
          _$_MemberResponse value, $Res Function(_$_MemberResponse) then) =
      __$$_MemberResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "member") Member member});

  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$$_MemberResponseCopyWithImpl<$Res>
    extends _$MemberResponseCopyWithImpl<$Res, _$_MemberResponse>
    implements _$$_MemberResponseCopyWith<$Res> {
  __$$_MemberResponseCopyWithImpl(
      _$_MemberResponse _value, $Res Function(_$_MemberResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? member = null,
  }) {
    return _then(_$_MemberResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberResponse extends _MemberResponse {
  const _$_MemberResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "member") required this.member})
      : super._();

  factory _$_MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MemberResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "member")
  final Member member;

  @override
  String toString() {
    return 'MemberResponse(status: $status, code: $code, message: $message, member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.member, member) || other.member == member));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, member);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberResponseCopyWith<_$_MemberResponse> get copyWith =>
      __$$_MemberResponseCopyWithImpl<_$_MemberResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberResponseToJson(
      this,
    );
  }
}

abstract class _MemberResponse extends MemberResponse {
  const factory _MemberResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "member") required final Member member}) =
      _$_MemberResponse;
  const _MemberResponse._() : super._();

  factory _MemberResponse.fromJson(Map<String, dynamic> json) =
      _$_MemberResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "member")
  Member get member;
  @override
  @JsonKey(ignore: true)
  _$$_MemberResponseCopyWith<_$_MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
