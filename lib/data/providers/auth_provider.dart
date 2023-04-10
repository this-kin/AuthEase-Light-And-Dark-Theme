import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/notifiers/auth_notifiers.dart';
import 'package:qoute_app/data/states/auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref: ref);
});
