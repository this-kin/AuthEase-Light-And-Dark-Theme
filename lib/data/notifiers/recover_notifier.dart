import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/data/states/recover_state.dart';

class RecoverStateNotifier extends StateNotifier<RecoveryState> {
  final Ref _ref;

  RecoverStateNotifier({required Ref ref})
      : _ref = ref,
        super(RecoveryState.idle());

  Future<void> forgot({required String email}) async {
    state = const RecoveryState.loading(loading: '');
    try {
      await Future.delayed(const Duration(seconds: 30));
      state = RecoveryState.email();
    } on Exception catch (e) {
      final lastState = state;
      state = RecoveryState.failed(reason: e.toString(), lastState: lastState);
    }
  }

  Future resetPassword({required password, conPassword}) async {
    state = const RecoveryState.loading(loading: '');
    try {
      await Future.delayed(const Duration(seconds: 30));
      state = RecoveryState.success();
    } on Exception catch (e) {
      final lastState = state;
      state = RecoveryState.failed(reason: e.toString(), lastState: lastState);
    }
  }
}
