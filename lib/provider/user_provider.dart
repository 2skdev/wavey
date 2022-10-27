import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_state.dart';

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier() : super(const UserState());
}

final userStateNotifier = StateNotifierProvider<UserStateNotifier, UserState>(
  (_) => UserStateNotifier(),
);
