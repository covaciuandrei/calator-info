import 'package:calator_info/cubit/base_cubit.dart';
import 'package:calator_info/cubit/base_state.dart';
import 'package:calator_info/cubit/login/login_states.dart';
import 'package:injectable/injectable.dart';

@injectable
class IntroductiveCubit extends BaseCubit {
  IntroductiveCubit() : super(InitialState());

  Future<void> load() async {
    safeEmit(PendingState());
    Future.delayed(const Duration(seconds: 5), () => safeEmit(LoadingFinishedState()));
  }
}
