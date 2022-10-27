import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default('') String id,
    @Default('') String spotifyId,
  }) = _UserState;
}
