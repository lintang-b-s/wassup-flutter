

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassup/models/auth_data.dart';

class AuthNotifier extends StateNotifier<Auth> {
  AuthNotifier() : super(Auth(isLogin: false));

  void toggleIsLoginStatus() {
    state = Auth(isLogin: !state.isLogin);
    print(state);
  }
}

final authProvider = 
  StateNotifierProvider<AuthNotifier, Auth>((ref) {
    return AuthNotifier();
  });