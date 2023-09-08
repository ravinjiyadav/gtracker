// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Circle _$CircleFromJson(Map<String, dynamic> json) {
  return _Circle.fromJson(json);
}

/// @nodoc
mixin _$Circle {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "show_my_location_to_others")
  bool get showMyLocationToOthers => throw _privateConstructorUsedError;
  @JsonKey(name: "show_members_location_to_others")
  bool get showMembersLocationToOthers => throw _privateConstructorUsedError;
  @JsonKey(name: "isOwner")
  bool get isOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CircleCopyWith<Circle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleCopyWith<$Res> {
  factory $CircleCopyWith(Circle value, $Res Function(Circle) then) =
      _$CircleCopyWithImpl<$Res, Circle>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int id,
      @JsonKey(name: "name")
          String name,
      @JsonKey(name: "user_id")
          int userId,
      @JsonKey(name: "show_my_location_to_others")
          bool showMyLocationToOthers,
      @JsonKey(name: "show_members_location_to_others")
          bool showMembersLocationToOthers,
      @JsonKey(name: "isOwner")
          bool isOwner});
}

/// @nodoc
class _$CircleCopyWithImpl<$Res, $Val extends Circle>
    implements $CircleCopyWith<$Res> {
  _$CircleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? showMyLocationToOthers = null,
    Object? showMembersLocationToOthers = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      showMyLocationToOthers: null == showMyLocationToOthers
          ? _value.showMyLocationToOthers
          : showMyLocationToOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      showMembersLocationToOthers: null == showMembersLocationToOthers
          ? _value.showMembersLocationToOthers
          : showMembersLocationToOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CircleCopyWith<$Res> implements $CircleCopyWith<$Res> {
  factory _$$_CircleCopyWith(_$_Circle value, $Res Function(_$_Circle) then) =
      __$$_CircleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int id,
      @JsonKey(name: "name")
          String name,
      @JsonKey(name: "user_id")
          int userId,
      @JsonKey(name: "show_my_location_to_others")
          bool showMyLocationToOthers,
      @JsonKey(name: "show_members_location_to_others")
          bool showMembersLocationToOthers,
      @JsonKey(name: "isOwner")
          bool isOwner});
}

/// @nodoc
class __$$_CircleCopyWithImpl<$Res>
    extends _$CircleCopyWithImpl<$Res, _$_Circle>
    implements _$$_CircleCopyWith<$Res> {
  __$$_CircleCopyWithImpl(_$_Circle _value, $Res Function(_$_Circle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? showMyLocationToOthers = null,
    Object? showMembersLocationToOthers = null,
    Object? isOwner = null,
  }) {
    return _then(_$_Circle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      showMyLocationToOthers: null == showMyLocationToOthers
          ? _value.showMyLocationToOthers
          : showMyLocationToOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      showMembersLocationToOthers: null == showMembersLocationToOthers
          ? _value.showMembersLocationToOthers
          : showMembersLocationToOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Circle extends _Circle {
  const _$_Circle(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "name")
          required this.name,
      @JsonKey(name: "user_id")
          this.userId = -1,
      @JsonKey(name: "show_my_location_to_others")
          this.showMyLocationToOthers = true,
      @JsonKey(name: "show_members_location_to_others")
          this.showMembersLocationToOthers = true,
      @JsonKey(name: "isOwner")
          this.isOwner = true})
      : super._();

  factory _$_Circle.fromJson(Map<String, dynamic> json) =>
      _$$_CircleFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "show_my_location_to_others")
  final bool showMyLocationToOthers;
  @override
  @JsonKey(name: "show_members_location_to_others")
  final bool showMembersLocationToOthers;
  @override
  @JsonKey(name: "isOwner")
  final bool isOwner;

  @override
  String toString() {
    return 'Circle(id: $id, name: $name, userId: $userId, showMyLocationToOthers: $showMyLocationToOthers, showMembersLocationToOthers: $showMembersLocationToOthers, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Circle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.showMyLocationToOthers, showMyLocationToOthers) ||
                other.showMyLocationToOthers == showMyLocationToOthers) &&
            (identical(other.showMembersLocationToOthers,
                    showMembersLocationToOthers) ||
                other.showMembersLocationToOthers ==
                    showMembersLocationToOthers) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userId,
      showMyLocationToOthers, showMembersLocationToOthers, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      __$$_CircleCopyWithImpl<_$_Circle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CircleToJson(
      this,
    );
  }
}

abstract class _Circle extends Circle {
  const factory _Circle(
      {@JsonKey(name: "id")
          required final int id,
      @JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "user_id")
          final int userId,
      @JsonKey(name: "show_my_location_to_others")
          final bool showMyLocationToOthers,
      @JsonKey(name: "show_members_location_to_others")
          final bool showMembersLocationToOthers,
      @JsonKey(name: "isOwner")
          final bool isOwner}) = _$_Circle;
  const _Circle._() : super._();

  factory _Circle.fromJson(Map<String, dynamic> json) = _$_Circle.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "show_my_location_to_others")
  bool get showMyLocationToOthers;
  @override
  @JsonKey(name: "show_members_location_to_others")
  bool get showMembersLocationToOthers;
  @override
  @JsonKey(name: "isOwner")
  bool get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$_CircleCopyWith<_$_Circle> get copyWith =>
      throw _privateConstructorUsedError;
}
