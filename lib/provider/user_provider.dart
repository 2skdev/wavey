import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_state.dart';

const String kShareRefKeyUserId = 'userId';

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier() : super(const UserState()) {
    SharedPreferences.getInstance().then(
      (refs) {
        final userId = refs.getString(kShareRefKeyUserId);

        if (userId != null) {
          FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get()
              .then((doc) => state = UserState.fromDocument(doc));
        }
      },
    );
  }

  bool get isSignin => state.id != '';

  void signin({required String spotifyId}) {
    if (state.id == '') {
      final newState = UserState(spotifyId: spotifyId);

      FirebaseFirestore.instance
          .collection('users')
          .add(newState.toJson())
          .then(
        (doc) {
          state = newState.copyWith(id: doc.id);

          SharedPreferences.getInstance().then(
            (refs) => refs.setString(kShareRefKeyUserId, doc.id),
          );
        },
      );
    }
  }
}

final userStateNotifier = StateNotifierProvider<UserStateNotifier, UserState>(
  (_) => UserStateNotifier(),
);
