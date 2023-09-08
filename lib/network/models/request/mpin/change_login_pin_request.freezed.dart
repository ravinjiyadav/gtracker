// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_login_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeLoginPinRequest _$ChangeLoginPinRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangeLoginPinRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeLoginPinRequest {
  @JsonKey(name: "old_mpin")
  int get oldMpin => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  int get mpin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeLoginPinRequestCopyWith<ChangeLoginPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLoginPinRequestCopyWith<$Res> {
  factory $ChangeLoginPinRequestCopyWith(ChangeLoginPinRequest value,
          $Res Function(ChangeLoginPinRequest) then) =
      _$ChangeLoginPinRequestCopyWithImpl<$Res, ChangeLoginPinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "old_mpin") int oldMpin,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class _$ChangeLoginPinRequestCopyWithImpl<$Res,
        $Val extends ChangeLoginPinRequest>
    implements $ChangeLoginPinRequestCopyWith<$Res> {
  _$ChangeLoginPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldMpin = null,
    Object? mpin = null,
  }) {
    return _then(_value.copyWith(
      oldMpin: null == oldMpin
          ? _value.oldMpin
          : oldMpin // ignore: cast_nullable_to_non_nullable
              as int,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeLoginPinRequestCopyWith<$Res>
    implements $ChangeLoginPinRequestCopyWith<$Res> {
  factory _$$_ChangeLoginPinRequestCopyWith(_$_ChangeLoginPinRequest value,
          $Res Function(_$_ChangeLoginPinRequest) then) =
      __$$_ChangeLoginPinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "old_mpin") int oldMpin,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class __$$_ChangeLoginPinRequestCopyWithImpl<$Res>
    extends _$ChangeLoginPinRequestCopyWithImpl<$Res, _$_ChangeLoginPinRequest>
    implements _$$_ChangeLoginPinRequestCopyWith<$Res> {
  __$$_ChangeLoginPinRequestCopyWithImpl(_$_ChangeLoginPinRequest _value,
      $Res Function(_$_ChangeLoginPinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldMpin = null,
    Object? mpin = null,
  }) {
    return _then(_$_ChangeLoginPinRequest(
      oldMpin: null == oldMpin
          ? _value.oldMpin
          : oldMpin // ignore: cast_nullable_to_non_nullable
              as int,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeLoginPinRequest extends _ChangeLoginPinRequest {
  const _$_ChangeLoginPinRequest(
      {@JsonKey(name: "old_mpin") required this.oldMpin,
      @JsonKey(name: "mpin") required this.mpin})
      : super._();

  factory _$_ChangeLoginPinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeLoginPinRequestFromJson(json);

  @override
  @JsonKey(name: "old_mpin")
  final int oldMpin;
  @override
  @JsonKey(name: "mpin")
  final int mpin;

  @override
  String toString() {
    return 'ChangeLoginPinRequest(oldMpin: $oldMpin, mpin: $mpin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLoginPinRequest &&
            (identical(other.oldMpin, oldMpin) || other.oldMpin == oldMpin) &&
            (identical(other.mpin, mpin) || other.mpin == mpin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldMpin, mpin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLoginPinRequestCopyWith<_$_ChangeLoginPinRequest> get copyWith =>
      __$$_ChangeLoginPinRequestCopyWithImpl<_$_ChangeLoginPinRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeLoginPinRequestToJson(
      this,
    );
  }
}

abstract class _ChangeLoginPinRequest extends ChangeLoginPinRequest {
  const factory _ChangeLoginPinRequest(
          {@JsonKey(name: "old_mpin") required final int oldMpin,
          @JsonKey(name: "mpin") required final int mpin}) =
      _$_ChangeLoginPinRequest;
  const _ChangeLoginPinRequest._() : super._();

  factory _ChangeLoginPinRequest.fromJson(Map<String, dynamic> json) =
      _$_ChangeLoginPinRequest.fromJson;

  @override
  @JsonKey(name: "old_mpin")
  int get oldMpin;
  @override
  @JsonKey(name: "mpin")
  int get mpin;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeLoginPinRequestCopyWith<_$_ChangeLoginPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
