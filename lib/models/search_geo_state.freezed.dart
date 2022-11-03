// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_geo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchGeoState {
  String get query => throw _privateConstructorUsedError;
  List<Place> get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchGeoStateCopyWith<SearchGeoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchGeoStateCopyWith<$Res> {
  factory $SearchGeoStateCopyWith(
          SearchGeoState value, $Res Function(SearchGeoState) then) =
      _$SearchGeoStateCopyWithImpl<$Res, SearchGeoState>;
  @useResult
  $Res call({String query, List<Place> result});
}

/// @nodoc
class _$SearchGeoStateCopyWithImpl<$Res, $Val extends SearchGeoState>
    implements $SearchGeoStateCopyWith<$Res> {
  _$SearchGeoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchGeoStateCopyWith<$Res>
    implements $SearchGeoStateCopyWith<$Res> {
  factory _$$_SearchGeoStateCopyWith(
          _$_SearchGeoState value, $Res Function(_$_SearchGeoState) then) =
      __$$_SearchGeoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<Place> result});
}

/// @nodoc
class __$$_SearchGeoStateCopyWithImpl<$Res>
    extends _$SearchGeoStateCopyWithImpl<$Res, _$_SearchGeoState>
    implements _$$_SearchGeoStateCopyWith<$Res> {
  __$$_SearchGeoStateCopyWithImpl(
      _$_SearchGeoState _value, $Res Function(_$_SearchGeoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? result = null,
  }) {
    return _then(_$_SearchGeoState(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$_SearchGeoState implements _SearchGeoState {
  const _$_SearchGeoState(
      {this.query = '', final List<Place> result = const <Place>[]})
      : _result = result;

  @override
  @JsonKey()
  final String query;
  final List<Place> _result;
  @override
  @JsonKey()
  List<Place> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'SearchGeoState(query: $query, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchGeoState &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchGeoStateCopyWith<_$_SearchGeoState> get copyWith =>
      __$$_SearchGeoStateCopyWithImpl<_$_SearchGeoState>(this, _$identity);
}

abstract class _SearchGeoState implements SearchGeoState {
  const factory _SearchGeoState(
      {final String query, final List<Place> result}) = _$_SearchGeoState;

  @override
  String get query;
  @override
  List<Place> get result;
  @override
  @JsonKey(ignore: true)
  _$$_SearchGeoStateCopyWith<_$_SearchGeoState> get copyWith =>
      throw _privateConstructorUsedError;
}
