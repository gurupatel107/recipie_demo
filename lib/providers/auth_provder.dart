import 'package:hooks_riverpod/all.dart';

final authProvider = StateNotifierProvider<AuthNotifier>((ref) {
  return;
});

class AuthNotifier extends StateNotifier<AuthModel> {
  AuthNotifier(AuthModel state) : super(state);

  setCurrentUser(AuthModel user) {
    state = user;
  }

  void clearUser() {
    state = null;
  }
}

class AuthModel {
  final bool isLoggedIn;

  AuthModel(
    this.isLoggedIn,
  );

  AuthModel copyWith({
    bool isLoggedIn,
  }) {
    return AuthModel(
      isLoggedIn ?? this.isLoggedIn,
    );
  }
}
