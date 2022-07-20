import 'package:auto_route/auto_route.dart';
import 'package:test_app/features/Album/view/single_album_screen.dart';
import 'package:test_app/features/AutoRoute/views/first_page.dart';
import 'package:test_app/features/AutoRoute/views/main_page.dart';
import 'package:test_app/features/AutoRoute/views/param_page.dart';
import 'package:test_app/features/AutoRoute/views/second_page.dart';
import 'package:test_app/features/BottomNavigation/view/navigation_screen.dart';
import 'package:test_app/features/Setting/setting_screen.dart';
import 'package:test_app/features/auth/auth_check/auth_check.dart';
import 'package:test_app/features/auth/view/login_screen.dart';
import 'package:test_app/features/onboarding/onboarding_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(
    page: AuthCheckWidget,
    initial: true,
  ),
  MaterialRoute(
    page: LoginScreen,
  ),
  MaterialRoute(
    page: NavigationScreen,
  ),
  MaterialRoute(
    page: AppOnboardingScreen,
  ),
  MaterialRoute(
    page: SingleAlbumScreen,
  ),
  MaterialRoute(page: SettingPage, children: [
    MaterialRoute(page: FirstPage, initial: true),
    MaterialRoute(page: MainPage),
    MaterialRoute(page: SecondPage),
  ]),
  MaterialRoute(page: ParamPage, path: "/param/:id"),
])
class $AppRouter {}
