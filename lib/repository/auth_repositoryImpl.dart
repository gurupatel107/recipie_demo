import 'package:hooks_riverpod/all.dart';

import 'auth_reposiotory.dart';

final authRepoProvder = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});

class AuthRepositoryImpl implements AuthRepository {
  @override
  void signIn() {
    print('s');
  }

  @override
  void signOut() {}
}