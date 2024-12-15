// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String bookId) favoriteAddedSuccessfully,
    required TResult Function(String bookId) favoriteRemovedSuccessfully,
    required TResult Function(List<BookDetailsResponseModel> book)
        favoriteLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String bookId)? favoriteAddedSuccessfully,
    TResult? Function(String bookId)? favoriteRemovedSuccessfully,
    TResult? Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String bookId)? favoriteAddedSuccessfully,
    TResult Function(String bookId)? favoriteRemovedSuccessfully,
    TResult Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteAddedSuccessfully value)
        favoriteAddedSuccessfully,
    required TResult Function(FavoriteRemovedSuccessfully value)
        favoriteRemovedSuccessfully,
    required TResult Function(FavoriteLoadedSuccessfully value)
        favoriteLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult? Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult? Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FavoriteInitialImplCopyWith<$Res> {
  factory _$$FavoriteInitialImplCopyWith(_$FavoriteInitialImpl value,
          $Res Function(_$FavoriteInitialImpl) then) =
      __$$FavoriteInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteInitialImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteInitialImpl>
    implements _$$FavoriteInitialImplCopyWith<$Res> {
  __$$FavoriteInitialImplCopyWithImpl(
      _$FavoriteInitialImpl _value, $Res Function(_$FavoriteInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoriteInitialImpl implements FavoriteInitial {
  const _$FavoriteInitialImpl();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String bookId) favoriteAddedSuccessfully,
    required TResult Function(String bookId) favoriteRemovedSuccessfully,
    required TResult Function(List<BookDetailsResponseModel> book)
        favoriteLoadedSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String bookId)? favoriteAddedSuccessfully,
    TResult? Function(String bookId)? favoriteRemovedSuccessfully,
    TResult? Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String bookId)? favoriteAddedSuccessfully,
    TResult Function(String bookId)? favoriteRemovedSuccessfully,
    TResult Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteAddedSuccessfully value)
        favoriteAddedSuccessfully,
    required TResult Function(FavoriteRemovedSuccessfully value)
        favoriteRemovedSuccessfully,
    required TResult Function(FavoriteLoadedSuccessfully value)
        favoriteLoadedSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult? Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult? Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoriteInitial implements FavoriteState {
  const factory FavoriteInitial() = _$FavoriteInitialImpl;
}

/// @nodoc
abstract class _$$FavoriteAddedSuccessfullyImplCopyWith<$Res> {
  factory _$$FavoriteAddedSuccessfullyImplCopyWith(
          _$FavoriteAddedSuccessfullyImpl value,
          $Res Function(_$FavoriteAddedSuccessfullyImpl) then) =
      __$$FavoriteAddedSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$FavoriteAddedSuccessfullyImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteAddedSuccessfullyImpl>
    implements _$$FavoriteAddedSuccessfullyImplCopyWith<$Res> {
  __$$FavoriteAddedSuccessfullyImplCopyWithImpl(
      _$FavoriteAddedSuccessfullyImpl _value,
      $Res Function(_$FavoriteAddedSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$FavoriteAddedSuccessfullyImpl(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteAddedSuccessfullyImpl implements FavoriteAddedSuccessfully {
  const _$FavoriteAddedSuccessfullyImpl(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'FavoriteState.favoriteAddedSuccessfully(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteAddedSuccessfullyImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteAddedSuccessfullyImplCopyWith<_$FavoriteAddedSuccessfullyImpl>
      get copyWith => __$$FavoriteAddedSuccessfullyImplCopyWithImpl<
          _$FavoriteAddedSuccessfullyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String bookId) favoriteAddedSuccessfully,
    required TResult Function(String bookId) favoriteRemovedSuccessfully,
    required TResult Function(List<BookDetailsResponseModel> book)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteAddedSuccessfully(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String bookId)? favoriteAddedSuccessfully,
    TResult? Function(String bookId)? favoriteRemovedSuccessfully,
    TResult? Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteAddedSuccessfully?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String bookId)? favoriteAddedSuccessfully,
    TResult Function(String bookId)? favoriteRemovedSuccessfully,
    TResult Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteAddedSuccessfully != null) {
      return favoriteAddedSuccessfully(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteAddedSuccessfully value)
        favoriteAddedSuccessfully,
    required TResult Function(FavoriteRemovedSuccessfully value)
        favoriteRemovedSuccessfully,
    required TResult Function(FavoriteLoadedSuccessfully value)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteAddedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult? Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult? Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteAddedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteAddedSuccessfully != null) {
      return favoriteAddedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class FavoriteAddedSuccessfully implements FavoriteState {
  const factory FavoriteAddedSuccessfully(final String bookId) =
      _$FavoriteAddedSuccessfullyImpl;

  String get bookId;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteAddedSuccessfullyImplCopyWith<_$FavoriteAddedSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteRemovedSuccessfullyImplCopyWith<$Res> {
  factory _$$FavoriteRemovedSuccessfullyImplCopyWith(
          _$FavoriteRemovedSuccessfullyImpl value,
          $Res Function(_$FavoriteRemovedSuccessfullyImpl) then) =
      __$$FavoriteRemovedSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$FavoriteRemovedSuccessfullyImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteRemovedSuccessfullyImpl>
    implements _$$FavoriteRemovedSuccessfullyImplCopyWith<$Res> {
  __$$FavoriteRemovedSuccessfullyImplCopyWithImpl(
      _$FavoriteRemovedSuccessfullyImpl _value,
      $Res Function(_$FavoriteRemovedSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$FavoriteRemovedSuccessfullyImpl(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteRemovedSuccessfullyImpl implements FavoriteRemovedSuccessfully {
  const _$FavoriteRemovedSuccessfullyImpl(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'FavoriteState.favoriteRemovedSuccessfully(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteRemovedSuccessfullyImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteRemovedSuccessfullyImplCopyWith<_$FavoriteRemovedSuccessfullyImpl>
      get copyWith => __$$FavoriteRemovedSuccessfullyImplCopyWithImpl<
          _$FavoriteRemovedSuccessfullyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String bookId) favoriteAddedSuccessfully,
    required TResult Function(String bookId) favoriteRemovedSuccessfully,
    required TResult Function(List<BookDetailsResponseModel> book)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteRemovedSuccessfully(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String bookId)? favoriteAddedSuccessfully,
    TResult? Function(String bookId)? favoriteRemovedSuccessfully,
    TResult? Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteRemovedSuccessfully?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String bookId)? favoriteAddedSuccessfully,
    TResult Function(String bookId)? favoriteRemovedSuccessfully,
    TResult Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteRemovedSuccessfully != null) {
      return favoriteRemovedSuccessfully(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteAddedSuccessfully value)
        favoriteAddedSuccessfully,
    required TResult Function(FavoriteRemovedSuccessfully value)
        favoriteRemovedSuccessfully,
    required TResult Function(FavoriteLoadedSuccessfully value)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteRemovedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult? Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult? Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteRemovedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteRemovedSuccessfully != null) {
      return favoriteRemovedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class FavoriteRemovedSuccessfully implements FavoriteState {
  const factory FavoriteRemovedSuccessfully(final String bookId) =
      _$FavoriteRemovedSuccessfullyImpl;

  String get bookId;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteRemovedSuccessfullyImplCopyWith<_$FavoriteRemovedSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteLoadedSuccessfullyImplCopyWith<$Res> {
  factory _$$FavoriteLoadedSuccessfullyImplCopyWith(
          _$FavoriteLoadedSuccessfullyImpl value,
          $Res Function(_$FavoriteLoadedSuccessfullyImpl) then) =
      __$$FavoriteLoadedSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookDetailsResponseModel> book});
}

/// @nodoc
class __$$FavoriteLoadedSuccessfullyImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteLoadedSuccessfullyImpl>
    implements _$$FavoriteLoadedSuccessfullyImplCopyWith<$Res> {
  __$$FavoriteLoadedSuccessfullyImplCopyWithImpl(
      _$FavoriteLoadedSuccessfullyImpl _value,
      $Res Function(_$FavoriteLoadedSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$FavoriteLoadedSuccessfullyImpl(
      null == book
          ? _value._book
          : book // ignore: cast_nullable_to_non_nullable
              as List<BookDetailsResponseModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteLoadedSuccessfullyImpl implements FavoriteLoadedSuccessfully {
  const _$FavoriteLoadedSuccessfullyImpl(
      final List<BookDetailsResponseModel> book)
      : _book = book;

  final List<BookDetailsResponseModel> _book;
  @override
  List<BookDetailsResponseModel> get book {
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_book);
  }

  @override
  String toString() {
    return 'FavoriteState.favoriteLoadedSuccessfully(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteLoadedSuccessfullyImpl &&
            const DeepCollectionEquality().equals(other._book, _book));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_book));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteLoadedSuccessfullyImplCopyWith<_$FavoriteLoadedSuccessfullyImpl>
      get copyWith => __$$FavoriteLoadedSuccessfullyImplCopyWithImpl<
          _$FavoriteLoadedSuccessfullyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String bookId) favoriteAddedSuccessfully,
    required TResult Function(String bookId) favoriteRemovedSuccessfully,
    required TResult Function(List<BookDetailsResponseModel> book)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteLoadedSuccessfully(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String bookId)? favoriteAddedSuccessfully,
    TResult? Function(String bookId)? favoriteRemovedSuccessfully,
    TResult? Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteLoadedSuccessfully?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String bookId)? favoriteAddedSuccessfully,
    TResult Function(String bookId)? favoriteRemovedSuccessfully,
    TResult Function(List<BookDetailsResponseModel> book)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteLoadedSuccessfully != null) {
      return favoriteLoadedSuccessfully(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteAddedSuccessfully value)
        favoriteAddedSuccessfully,
    required TResult Function(FavoriteRemovedSuccessfully value)
        favoriteRemovedSuccessfully,
    required TResult Function(FavoriteLoadedSuccessfully value)
        favoriteLoadedSuccessfully,
  }) {
    return favoriteLoadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult? Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult? Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
  }) {
    return favoriteLoadedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteAddedSuccessfully value)?
        favoriteAddedSuccessfully,
    TResult Function(FavoriteRemovedSuccessfully value)?
        favoriteRemovedSuccessfully,
    TResult Function(FavoriteLoadedSuccessfully value)?
        favoriteLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (favoriteLoadedSuccessfully != null) {
      return favoriteLoadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoadedSuccessfully implements FavoriteState {
  const factory FavoriteLoadedSuccessfully(
          final List<BookDetailsResponseModel> book) =
      _$FavoriteLoadedSuccessfullyImpl;

  List<BookDetailsResponseModel> get book;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteLoadedSuccessfullyImplCopyWith<_$FavoriteLoadedSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
