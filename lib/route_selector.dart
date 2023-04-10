import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/data/providers/auth_provider.dart';
import 'package:qoute_app/modules/home.dart';
import 'package:qoute_app/modules/login.dart';

class RouteSelector extends ConsumerWidget {
  const RouteSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    // CHECK FOR EXISTING USER
    return authState.maybeWhen(
      authenticated: (name) {
        return const Home();
      },
      orElse: () => Login(),
    );
  }
}
