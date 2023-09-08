// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_mpin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmMpinResponse _$ConfirmMpinResponseFromJson(Map<String, dynamic> json) {
  return _ConfirmMpinResponse.fromJson(json);
}

/// @nodoc
mixin _$ConfirmMpinResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  GUser? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "page_link")
  GLink? get pageLinks => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmMpinResponseCopyWith<ConfirmMpinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmMpinResponseCopyWith<$Res> {
  factory $ConfirmMpinResponseCopyWith(
          ConfirmMpinResponse value, $Res Function(ConfirmMpinResponse) then) =
      _$ConfirmMpinResponseCopyWithImpl<$Res, ConfirmMpinResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") GUser? data,
      @JsonKey(name: "page_link") GLink? pageLinks,
      @JsonKey(name: "token") String token});

  $GUserCopyWith<$Res>? get data;
  $GLinkCopyWith<$Res>? get pageLinks;
}

/// @nodoc
class _$ConfirmMpinResponseCopyWithImpl<$Res, $Val extends ConfirmMpinResponse>
    implements $ConfirmMpinResponseCopyWith<$Res> {
  _$ConfirmMpinResponseCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
    Object? pageLinks = freezed,
    Object? token = null,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
      pageLinks: freezed == pageLinks
          ? _value.pageLinks
          : pageLinks // ignore: cast_nullable_to_non_nullable
              as GLink?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GUserCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GUserCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GLinkCopyWith<$Res>? get pageLinks {
    if (_value.pageLinks == null) {
      return null;
    }

    return $GLinkCopyWith<$Res>(_value.pageLinks!, (value) {
      return _then(_value.copyWith(pageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConfirmMpinResponseCopyWith<$Res>
    implements $ConfirmMpinResponseCopyWith<$Res> {
  factory _$$_ConfirmMpinResponseCopyWith(_$_ConfirmMpinResponse value,
          $Res Function(_$_ConfirmMpinResponse) then) =
      __$$_ConfirmMpinResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") GUser? data,
      @JsonKey(name: "page_link") GLink? pageLinks,
      @JsonKey(name: "token") String token});

  @override
  $GUserCopyWith<$Res>? get data;
  @override
  $GLinkCopyWith<$Res>? get pageLinks;
}

/// @nodoc
class __$$_ConfirmMpinResponseCopyWithImpl<$Res>
    extends _$ConfirmMpinResponseCopyWithImpl<$Res, _$_ConfirmMpinResponse>
    implements _$$_ConfirmMpinResponseCopyWith<$Res> {
  __$$_ConfirmMpinResponseCopyWithImpl(_$_ConfirmMpinResponse _value,
      $Res Function(_$_ConfirmMpinResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
    Object? pageLinks = freezed,
    Object? token = null,
  }) {
    return _then(_$_ConfirmMpinResponse(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
      pageLinks: freezed == pageLinks
          ? _value.pageLinks
          : pageLinks // ignore: cast_nullable_to_non_nullable
              as GLink?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfirmMpinResponse extends _ConfirmMpinResponse {
  const _$_ConfirmMpinResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "page_link") this.pageLinks,
      @JsonKey(name: "token") this.token = ""})
      : super._();

  factory _$_ConfirmMpinResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ConfirmMpinResponseFromJson(json);

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
  @JsonKey(name: "data")
  final GUser? data;
  @override
  @JsonKey(name: "page_link")
  final GLink? pageLinks;
  @override
  @JsonKey(name: "token")
  final String token;

  @override
  String toString() {
    return 'ConfirmMpinResponse(status: $status, code: $code, message: $message, data: $data, pageLinks: $pageLinks, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmMpinResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.pageLinks, pageLinks) ||
                other.pageLinks == pageLinks) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, data, pageLinks, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmMpinResponseCopyWith<_$_ConfirmMpinResponse> get copyWith =>
      __$$_ConfirmMpinResponseCopyWithImpl<_$_ConfirmMpinResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfirmMpinResponseToJson(
      this,
    );
  }
}

abstract class _ConfirmMpinResponse extends ConfirmMpinResponse {
  const factory _ConfirmMpinResponse(
      {@JsonKey(name: "status") final bool status,
      @JsonKey(name: "code") final int code,
      @JsonKey(name: "message") final String message,
      @JsonKey(name: "data") final GUser? data,
      @JsonKey(name: "page_link") final GLink? pageLinks,
      @JsonKey(name: "token") final String token}) = _$_ConfirmMpinResponse;
  const _ConfirmMpinResponse._() : super._();

  factory _ConfirmMpinResponse.fromJson(Map<String, dynamic> json) =
      _$_ConfirmMpinResponse.fromJson;

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
  @JsonKey(name: "data")
  GUser? get data;
  @override
  @JsonKey(name: "page_link")
  GLink? get pageLinks;
  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmMpinResponseCopyWith<_$_ConfirmMpinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
