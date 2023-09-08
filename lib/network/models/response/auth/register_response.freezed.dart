// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "redirect")
  String? get redirect => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  GUser? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "redirect") String? redirect,
      @JsonKey(name: "data") GUser? data});

  $GUserCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

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
    Object? redirect = freezed,
    Object? data = freezed,
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
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
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
}

/// @nodoc
abstract class _$$_RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$_RegisterResponseCopyWith(
          _$_RegisterResponse value, $Res Function(_$_RegisterResponse) then) =
      __$$_RegisterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "redirect") String? redirect,
      @JsonKey(name: "data") GUser? data});

  @override
  $GUserCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$_RegisterResponse>
    implements _$$_RegisterResponseCopyWith<$Res> {
  __$$_RegisterResponseCopyWithImpl(
      _$_RegisterResponse _value, $Res Function(_$_RegisterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? redirect = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_RegisterResponse(
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
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponse extends _RegisterResponse {
  const _$_RegisterResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "redirect") this.redirect,
      @JsonKey(name: "data") this.data})
      : super._();

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseFromJson(json);

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
  @JsonKey(name: "redirect")
  final String? redirect;
  @override
  @JsonKey(name: "data")
  final GUser? data;

  @override
  String toString() {
    return 'RegisterResponse(status: $status, code: $code, message: $message, redirect: $redirect, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, redirect, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      __$$_RegisterResponseCopyWithImpl<_$_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseToJson(
      this,
    );
  }
}

abstract class _RegisterResponse extends RegisterResponse {
  const factory _RegisterResponse(
      {@JsonKey(name: "status") final bool status,
      @JsonKey(name: "code") final int code,
      @JsonKey(name: "message") final String message,
      @JsonKey(name: "redirect") final String? redirect,
      @JsonKey(name: "data") final GUser? data}) = _$_RegisterResponse;
  const _RegisterResponse._() : super._();

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

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
  @JsonKey(name: "redirect")
  String? get redirect;
  @override
  @JsonKey(name: "data")
  GUser? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GUser _$GUserFromJson(Map<String, dynamic> json) {
  return _GUser.fromJson(json);
}

/// @nodoc
mixin _$GUser {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "dob")
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: "relation")
  String? get relation => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  int get mpin => throw _privateConstructorUsedError;
  @JsonKey(name: "circle_id")
  int? get circleId => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  int? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  int get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "location_id")
  int? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin")
  int get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "device_token")
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GUserCopyWith<GUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GUserCopyWith<$Res> {
  factory $GUserCopyWith(GUser value, $Res Function(GUser) then) =
      _$GUserCopyWithImpl<$Res, GUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "dob") String? dob,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "mpin") int mpin,
      @JsonKey(name: "circle_id") int? circleId,
      @JsonKey(name: "device_id") int? deviceId,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "location_id") int? locationId,
      @JsonKey(name: "is_admin") int isAdmin,
      @JsonKey(name: "device_token") String? deviceToken});
}

/// @nodoc
class _$GUserCopyWithImpl<$Res, $Val extends GUser>
    implements $GUserCopyWith<$Res> {
  _$GUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? photo = freezed,
    Object? dob = freezed,
    Object? relation = freezed,
    Object? email = freezed,
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = freezed,
    Object? mpin = null,
    Object? circleId = freezed,
    Object? deviceId = freezed,
    Object? parentId = null,
    Object? locationId = freezed,
    Object? isAdmin = null,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
      circleId: freezed == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as int,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GUserCopyWith<$Res> implements $GUserCopyWith<$Res> {
  factory _$$_GUserCopyWith(_$_GUser value, $Res Function(_$_GUser) then) =
      __$$_GUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "dob") String? dob,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "mpin") int mpin,
      @JsonKey(name: "circle_id") int? circleId,
      @JsonKey(name: "device_id") int? deviceId,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "location_id") int? locationId,
      @JsonKey(name: "is_admin") int isAdmin,
      @JsonKey(name: "device_token") String? deviceToken});
}

/// @nodoc
class __$$_GUserCopyWithImpl<$Res> extends _$GUserCopyWithImpl<$Res, _$_GUser>
    implements _$$_GUserCopyWith<$Res> {
  __$$_GUserCopyWithImpl(_$_GUser _value, $Res Function(_$_GUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? photo = freezed,
    Object? dob = freezed,
    Object? relation = freezed,
    Object? email = freezed,
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = freezed,
    Object? mpin = null,
    Object? circleId = freezed,
    Object? deviceId = freezed,
    Object? parentId = null,
    Object? locationId = freezed,
    Object? isAdmin = null,
    Object? deviceToken = freezed,
  }) {
    return _then(_$_GUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
      circleId: freezed == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as int,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GUser extends _GUser {
  const _$_GUser(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "photo") this.photo,
      @JsonKey(name: "dob") this.dob,
      @JsonKey(name: "relation") this.relation,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.mobile,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "mpin") this.mpin = 0,
      @JsonKey(name: "circle_id") this.circleId,
      @JsonKey(name: "device_id") this.deviceId,
      @JsonKey(name: "parent_id") this.parentId = 0,
      @JsonKey(name: "location_id") this.locationId,
      @JsonKey(name: "is_admin") this.isAdmin = 0,
      @JsonKey(name: "device_token") this.deviceToken})
      : super._();

  factory _$_GUser.fromJson(Map<String, dynamic> json) =>
      _$$_GUserFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "photo")
  final String? photo;
  @override
  @JsonKey(name: "dob")
  final String? dob;
  @override
  @JsonKey(name: "relation")
  final String? relation;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String mobile;
  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "mpin")
  final int mpin;
  @override
  @JsonKey(name: "circle_id")
  final int? circleId;
  @override
  @JsonKey(name: "device_id")
  final int? deviceId;
  @override
  @JsonKey(name: "parent_id")
  final int parentId;
  @override
  @JsonKey(name: "location_id")
  final int? locationId;
  @override
  @JsonKey(name: "is_admin")
  final int isAdmin;
  @override
  @JsonKey(name: "device_token")
  final String? deviceToken;

  @override
  String toString() {
    return 'GUser(id: $id, name: $name, photo: $photo, dob: $dob, relation: $relation, email: $email, countryCode: $countryCode, mobile: $mobile, otp: $otp, mpin: $mpin, circleId: $circleId, deviceId: $deviceId, parentId: $parentId, locationId: $locationId, isAdmin: $isAdmin, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      photo,
      dob,
      relation,
      email,
      countryCode,
      mobile,
      const DeepCollectionEquality().hash(otp),
      mpin,
      circleId,
      deviceId,
      parentId,
      locationId,
      isAdmin,
      deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GUserCopyWith<_$_GUser> get copyWith =>
      __$$_GUserCopyWithImpl<_$_GUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GUserToJson(
      this,
    );
  }
}

abstract class _GUser extends GUser {
  const factory _GUser(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "photo") final String? photo,
      @JsonKey(name: "dob") final String? dob,
      @JsonKey(name: "relation") final String? relation,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "mobile") required final String mobile,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "mpin") final int mpin,
      @JsonKey(name: "circle_id") final int? circleId,
      @JsonKey(name: "device_id") final int? deviceId,
      @JsonKey(name: "parent_id") final int parentId,
      @JsonKey(name: "location_id") final int? locationId,
      @JsonKey(name: "is_admin") final int isAdmin,
      @JsonKey(name: "device_token") final String? deviceToken}) = _$_GUser;
  const _GUser._() : super._();

  factory _GUser.fromJson(Map<String, dynamic> json) = _$_GUser.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "photo")
  String? get photo;
  @override
  @JsonKey(name: "dob")
  String? get dob;
  @override
  @JsonKey(name: "relation")
  String? get relation;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get mobile;
  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "mpin")
  int get mpin;
  @override
  @JsonKey(name: "circle_id")
  int? get circleId;
  @override
  @JsonKey(name: "device_id")
  int? get deviceId;
  @override
  @JsonKey(name: "parent_id")
  int get parentId;
  @override
  @JsonKey(name: "location_id")
  int? get locationId;
  @override
  @JsonKey(name: "is_admin")
  int get isAdmin;
  @override
  @JsonKey(name: "device_token")
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_GUserCopyWith<_$_GUser> get copyWith =>
      throw _privateConstructorUsedError;
}

GLink _$GLinkFromJson(Map<String, dynamic> json) {
  return _GLink.fromJson(json);
}

/// @nodoc
mixin _$GLink {
  @JsonKey(name: "aboutus")
  String? get aboutUs => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "terms")
  String? get terms => throw _privateConstructorUsedError;
  @JsonKey(name: "faq")
  String? get faq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GLinkCopyWith<GLink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GLinkCopyWith<$Res> {
  factory $GLinkCopyWith(GLink value, $Res Function(GLink) then) =
      _$GLinkCopyWithImpl<$Res, GLink>;
  @useResult
  $Res call(
      {@JsonKey(name: "aboutus") String? aboutUs,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "terms") String? terms,
      @JsonKey(name: "faq") String? faq});
}

/// @nodoc
class _$GLinkCopyWithImpl<$Res, $Val extends GLink>
    implements $GLinkCopyWith<$Res> {
  _$GLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutUs = freezed,
    Object? privacy = freezed,
    Object? terms = freezed,
    Object? faq = freezed,
  }) {
    return _then(_value.copyWith(
      aboutUs: freezed == aboutUs
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GLinkCopyWith<$Res> implements $GLinkCopyWith<$Res> {
  factory _$$_GLinkCopyWith(_$_GLink value, $Res Function(_$_GLink) then) =
      __$$_GLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "aboutus") String? aboutUs,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "terms") String? terms,
      @JsonKey(name: "faq") String? faq});
}

/// @nodoc
class __$$_GLinkCopyWithImpl<$Res> extends _$GLinkCopyWithImpl<$Res, _$_GLink>
    implements _$$_GLinkCopyWith<$Res> {
  __$$_GLinkCopyWithImpl(_$_GLink _value, $Res Function(_$_GLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutUs = freezed,
    Object? privacy = freezed,
    Object? terms = freezed,
    Object? faq = freezed,
  }) {
    return _then(_$_GLink(
      aboutUs: freezed == aboutUs
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GLink extends _GLink {
  const _$_GLink(
      {@JsonKey(name: "aboutus") this.aboutUs,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "terms") this.terms,
      @JsonKey(name: "faq") this.faq})
      : super._();

  factory _$_GLink.fromJson(Map<String, dynamic> json) =>
      _$$_GLinkFromJson(json);

  @override
  @JsonKey(name: "aboutus")
  final String? aboutUs;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "terms")
  final String? terms;
  @override
  @JsonKey(name: "faq")
  final String? faq;

  @override
  String toString() {
    return 'GLink(aboutUs: $aboutUs, privacy: $privacy, terms: $terms, faq: $faq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GLink &&
            (identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.faq, faq) || other.faq == faq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aboutUs, privacy, terms, faq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GLinkCopyWith<_$_GLink> get copyWith =>
      __$$_GLinkCopyWithImpl<_$_GLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GLinkToJson(
      this,
    );
  }
}

abstract class _GLink extends GLink {
  const factory _GLink(
      {@JsonKey(name: "aboutus") final String? aboutUs,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "terms") final String? terms,
      @JsonKey(name: "faq") final String? faq}) = _$_GLink;
  const _GLink._() : super._();

  factory _GLink.fromJson(Map<String, dynamic> json) = _$_GLink.fromJson;

  @override
  @JsonKey(name: "aboutus")
  String? get aboutUs;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "terms")
  String? get terms;
  @override
  @JsonKey(name: "faq")
  String? get faq;
  @override
  @JsonKey(ignore: true)
  _$$_GLinkCopyWith<_$_GLink> get copyWith =>
      throw _privateConstructorUsedError;
}
