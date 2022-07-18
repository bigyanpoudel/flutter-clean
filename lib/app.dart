import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/routes/routes.dart';
import 'package:test_app/theme/theme.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640), //desing resoution from figma
        builder: (_, __) => MaterialApp.router(
              routerDelegate: AutoRouterDelegate(appRouter),
              routeInformationParser: appRouter.defaultRouteParser(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: lightTheme,
            ));
  }
}
