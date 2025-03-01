import 'package:calator_info/core/app_router.gr.dart';
import 'package:calator_info/core/injection.dart';
import 'package:calator_info/cubit/introductive/introductive_cubit.dart';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() async {
  configureDependencies();
  await getIt.allReady();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroductiveCubit>(create: (context) => getIt<IntroductiveCubit>()),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'calator_info',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        localeResolutionCallback: (locale, supportedLocales) {
          Locale result;
          if (locale == null) {
            result = supportedLocales.first;
          } else {
            final Locale? supportedLocale =
                supportedLocales.firstWhereOrNull((element) => element.languageCode == locale.languageCode);
            result = supportedLocale ?? supportedLocales.first;
          }

          Intl.defaultLocale = result.languageCode;

          return result;
        },
      ),
    );
  }
}
