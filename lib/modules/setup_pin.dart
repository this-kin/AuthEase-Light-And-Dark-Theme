import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';

class SetPin extends ConsumerWidget {
  const SetPin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnnotatedScaffold(
      child: Scaffold(
        body: SingleChildScrollView(),
      ),
    );
  }
}
