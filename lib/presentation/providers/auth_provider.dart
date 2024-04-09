import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/presentation/providers/auth_notifiers.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref: ref);
});
