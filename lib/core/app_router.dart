import 'package:auto_route/auto_route.dart';
import 'package:calator_info/presentation/pages/introductive/introductive_page.dart';
import 'package:injectable/injectable.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/introductive', page: IntroductivePage, initial: true),
  ],
)
@singleton
class $AppRouter {}
