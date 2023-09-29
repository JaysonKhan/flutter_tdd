// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String numberString)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConcreteEvent value) getConcreteNumber,
    required TResult Function(_RandomEvent value) getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ConcreteEvent value)? getConcreteNumber,
    TResult? Function(_RandomEvent value)? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConcreteEvent value)? getConcreteNumber,
    TResult Function(_RandomEvent value)? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NumberTriviaEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String numberString)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConcreteEvent value) getConcreteNumber,
    required TResult Function(_RandomEvent value) getRandomNumber,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ConcreteEvent value)? getConcreteNumber,
    TResult? Function(_RandomEvent value)? getRandomNumber,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConcreteEvent value)? getConcreteNumber,
    TResult Function(_RandomEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NumberTriviaEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ConcreteEventImplCopyWith<$Res> {
  factory _$$ConcreteEventImplCopyWith(
          _$ConcreteEventImpl value, $Res Function(_$ConcreteEventImpl) then) =
      __$$ConcreteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String numberString});
}

/// @nodoc
class __$$ConcreteEventImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$ConcreteEventImpl>
    implements _$$ConcreteEventImplCopyWith<$Res> {
  __$$ConcreteEventImplCopyWithImpl(
      _$ConcreteEventImpl _value, $Res Function(_$ConcreteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberString = null,
  }) {
    return _then(_$ConcreteEventImpl(
      null == numberString
          ? _value.numberString
          : numberString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConcreteEventImpl implements _ConcreteEvent {
  const _$ConcreteEventImpl(this.numberString);

  @override
  final String numberString;

  @override
  String toString() {
    return 'NumberTriviaEvent.getConcreteNumber(numberString: $numberString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConcreteEventImpl &&
            (identical(other.numberString, numberString) ||
                other.numberString == numberString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConcreteEventImplCopyWith<_$ConcreteEventImpl> get copyWith =>
      __$$ConcreteEventImplCopyWithImpl<_$ConcreteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getConcreteNumber(numberString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String numberString)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return getConcreteNumber?.call(numberString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(numberString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConcreteEvent value) getConcreteNumber,
    required TResult Function(_RandomEvent value) getRandomNumber,
  }) {
    return getConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ConcreteEvent value)? getConcreteNumber,
    TResult? Function(_RandomEvent value)? getRandomNumber,
  }) {
    return getConcreteNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConcreteEvent value)? getConcreteNumber,
    TResult Function(_RandomEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(this);
    }
    return orElse();
  }
}

abstract class _ConcreteEvent implements NumberTriviaEvent {
  const factory _ConcreteEvent(final String numberString) = _$ConcreteEventImpl;

  String get numberString;
  @JsonKey(ignore: true)
  _$$ConcreteEventImplCopyWith<_$ConcreteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RandomEventImplCopyWith<$Res> {
  factory _$$RandomEventImplCopyWith(
          _$RandomEventImpl value, $Res Function(_$RandomEventImpl) then) =
      __$$RandomEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomEventImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$RandomEventImpl>
    implements _$$RandomEventImplCopyWith<$Res> {
  __$$RandomEventImplCopyWithImpl(
      _$RandomEventImpl _value, $Res Function(_$RandomEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RandomEventImpl implements _RandomEvent {
  const _$RandomEventImpl();

  @override
  String toString() {
    return 'NumberTriviaEvent.getRandomNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RandomEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getRandomNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String numberString)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return getRandomNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConcreteEvent value) getConcreteNumber,
    required TResult Function(_RandomEvent value) getRandomNumber,
  }) {
    return getRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ConcreteEvent value)? getConcreteNumber,
    TResult? Function(_RandomEvent value)? getRandomNumber,
  }) {
    return getRandomNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConcreteEvent value)? getConcreteNumber,
    TResult Function(_RandomEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber(this);
    }
    return orElse();
  }
}

abstract class _RandomEvent implements NumberTriviaEvent {
  const factory _RandomEvent() = _$RandomEventImpl;
}

/// @nodoc
mixin _$NumberTriviaState {
  LoadingState get state => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LoadingState state, String text, int number, String errorMessage)
        uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            LoadingState state, String text, int number, String errorMessage)?
        uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LoadingState state, String text, int number, String errorMessage)?
        uiState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UiState value) uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UiState value)? uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UiState value)? uiState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberTriviaStateCopyWith<NumberTriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res, NumberTriviaState>;
  @useResult
  $Res call({LoadingState state, String text, int number, String errorMessage});
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res, $Val extends NumberTriviaState>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? text = null,
    Object? number = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiStateImplCopyWith<$Res>
    implements $NumberTriviaStateCopyWith<$Res> {
  factory _$$UiStateImplCopyWith(
          _$UiStateImpl value, $Res Function(_$UiStateImpl) then) =
      __$$UiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingState state, String text, int number, String errorMessage});
}

/// @nodoc
class __$$UiStateImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$UiStateImpl>
    implements _$$UiStateImplCopyWith<$Res> {
  __$$UiStateImplCopyWithImpl(
      _$UiStateImpl _value, $Res Function(_$UiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? text = null,
    Object? number = null,
    Object? errorMessage = null,
  }) {
    return _then(_$UiStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UiStateImpl implements _UiState {
  const _$UiStateImpl(
      {this.state = LoadingState.EMPTY,
      this.text = "",
      this.number = 0,
      this.errorMessage = ""});

  @override
  @JsonKey()
  final LoadingState state;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'NumberTriviaState.uiState(state: $state, text: $text, number: $number, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, state, text, number, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      __$$UiStateImplCopyWithImpl<_$UiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LoadingState state, String text, int number, String errorMessage)
        uiState,
  }) {
    return uiState(state, text, number, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            LoadingState state, String text, int number, String errorMessage)?
        uiState,
  }) {
    return uiState?.call(state, text, number, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            LoadingState state, String text, int number, String errorMessage)?
        uiState,
    required TResult orElse(),
  }) {
    if (uiState != null) {
      return uiState(state, text, number, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UiState value) uiState,
  }) {
    return uiState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UiState value)? uiState,
  }) {
    return uiState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UiState value)? uiState,
    required TResult orElse(),
  }) {
    if (uiState != null) {
      return uiState(this);
    }
    return orElse();
  }
}

abstract class _UiState implements NumberTriviaState {
  const factory _UiState(
      {final LoadingState state,
      final String text,
      final int number,
      final String errorMessage}) = _$UiStateImpl;

  @override
  LoadingState get state;
  @override
  String get text;
  @override
  int get number;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
