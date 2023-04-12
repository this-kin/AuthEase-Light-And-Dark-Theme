import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/data/states/recover_state.dart';

class RecoverStateNotifier extends StateNotifier<RecoveryState> {
  final Ref _ref;

  RecoverStateNotifier({required Ref ref})
      : _ref = ref,
        super(RecoveryState.idle());
}
