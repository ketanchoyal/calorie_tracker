// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$TodayHomeEventCopyWith<$Res> {
  factory _$$TodayHomeEventCopyWith(
          _$TodayHomeEvent value, $Res Function(_$TodayHomeEvent) then) =
      __$$TodayHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayHomeEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$TodayHomeEventCopyWith<$Res> {
  __$$TodayHomeEventCopyWithImpl(
      _$TodayHomeEvent _value, $Res Function(_$TodayHomeEvent) _then)
      : super(_value, (v) => _then(v as _$TodayHomeEvent));

  @override
  _$TodayHomeEvent get _value => super._value as _$TodayHomeEvent;
}

/// @nodoc

class _$TodayHomeEvent implements TodayHomeEvent {
  _$TodayHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.today()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
  }) {
    return today();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
  }) {
    return today?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
  }) {
    return today(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
  }) {
    return today?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today(this);
    }
    return orElse();
  }
}

abstract class TodayHomeEvent implements HomeEvent {
  factory TodayHomeEvent() = _$TodayHomeEvent;
}

/// @nodoc
abstract class _$$SomeOtherDateHomeEventCopyWith<$Res> {
  factory _$$SomeOtherDateHomeEventCopyWith(_$SomeOtherDateHomeEvent value,
          $Res Function(_$SomeOtherDateHomeEvent) then) =
      __$$SomeOtherDateHomeEventCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$SomeOtherDateHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$SomeOtherDateHomeEventCopyWith<$Res> {
  __$$SomeOtherDateHomeEventCopyWithImpl(_$SomeOtherDateHomeEvent _value,
      $Res Function(_$SomeOtherDateHomeEvent) _then)
      : super(_value, (v) => _then(v as _$SomeOtherDateHomeEvent));

  @override
  _$SomeOtherDateHomeEvent get _value =>
      super._value as _$SomeOtherDateHomeEvent;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$SomeOtherDateHomeEvent(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SomeOtherDateHomeEvent implements SomeOtherDateHomeEvent {
  _$SomeOtherDateHomeEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeEvent.of(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomeOtherDateHomeEvent &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      __$$SomeOtherDateHomeEventCopyWithImpl<_$SomeOtherDateHomeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
  }) {
    return of(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
  }) {
    return of?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    required TResult orElse(),
  }) {
    if (of != null) {
      return of(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
  }) {
    return of(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
  }) {
    return of?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    required TResult orElse(),
  }) {
    if (of != null) {
      return of(this);
    }
    return orElse();
  }
}

abstract class SomeOtherDateHomeEvent implements HomeEvent {
  factory SomeOtherDateHomeEvent(final DateTime date) =
      _$SomeOtherDateHomeEvent;

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
