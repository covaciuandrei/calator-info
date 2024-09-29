import 'package:calator_info/cubit/base_cubit.dart';
import 'package:calator_info/cubit/base_state.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'package:calator_info/cubit/introductive/introductive_states.dart';

@injectable
class IntroductiveCubit extends BaseCubit {
  IntroductiveCubit() : super(InitialState());

  Future<void> load() async {
    safeEmit(PendingState());
    Future.delayed(const Duration(seconds: 5), () => safeEmit(LoadingFinishedState()));
  }

  Future<void> _openUrl(Uri url) async {
    await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    );
  }

  Future<void> openLink() async => _openUrl(Uri.parse('https://orice.org.ro/'));
}
