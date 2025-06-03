// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCharacters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCharacters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCharacters,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCharacters value) loadCharacters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCharacters value)? loadCharacters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCharacters value)? loadCharacters,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
    CharacterEvent value,
    $Res Function(CharacterEvent) then,
  ) = _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCharactersImplCopyWith<$Res> {
  factory _$$LoadCharactersImplCopyWith(
    _$LoadCharactersImpl value,
    $Res Function(_$LoadCharactersImpl) then,
  ) = __$$LoadCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$LoadCharactersImpl>
    implements _$$LoadCharactersImplCopyWith<$Res> {
  __$$LoadCharactersImplCopyWithImpl(
    _$LoadCharactersImpl _value,
    $Res Function(_$LoadCharactersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCharactersImpl implements _LoadCharacters {
  const _$LoadCharactersImpl();

  @override
  String toString() {
    return 'CharacterEvent.loadCharacters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCharacters,
  }) {
    return loadCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCharacters,
  }) {
    return loadCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCharacters,
    required TResult orElse(),
  }) {
    if (loadCharacters != null) {
      return loadCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCharacters value) loadCharacters,
  }) {
    return loadCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCharacters value)? loadCharacters,
  }) {
    return loadCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCharacters value)? loadCharacters,
    required TResult orElse(),
  }) {
    if (loadCharacters != null) {
      return loadCharacters(this);
    }
    return orElse();
  }
}

abstract class _LoadCharacters implements CharacterEvent {
  const factory _LoadCharacters() = _$LoadCharactersImpl;
}
