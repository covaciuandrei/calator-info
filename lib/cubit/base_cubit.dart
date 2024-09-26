import 'package:calator_info/cubit/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit(super.initialState);

  void safeEmit(BaseState state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
