// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../features/Album/view/single_album_screen.dart' as _i5;
import '../features/auth/auth_check/auth_check.dart' as _i1;
import '../features/auth/view/login_screen.dart' as _i2;
import '../features/AutoRoute/views/first_page.dart' as _i9;
import '../features/AutoRoute/views/main_page.dart' as _i10;
import '../features/AutoRoute/views/param_page.dart' as _i7;
import '../features/AutoRoute/views/second_page.dart' as _i11;
import '../features/BottomNavigation/view/navigation_screen.dart' as _i3;
import '../features/Login/view/login_page.dart' as _i8;
import '../features/onboarding/onboarding_screen.dart' as _i4;
import '../features/Setting/setting_screen.dart' as _i6;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthCheckWidgetRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthCheckWidget());
    },
    LoginScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    NavigationScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NavigationScreen());
    },
    AppOnboardingScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AppOnboardingScreen());
    },
    SingleAlbumScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SingleAlbumScreenRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.SingleAlbumScreen(key: args.key, id: args.id));
    },
    SettingPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingPage());
    },
    ParamPageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParamPageRouteArgs>(
          orElse: () => ParamPageRouteArgs(paramId: pathParams.getInt('id')));
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ParamPage(key: args.key, paramId: args.paramId));
    },
    LoginPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginPage());
    },
    FirstPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.FirstPage());
    },
    MainPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MainPage());
    },
    SecondPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.SecondPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(AuthCheckWidgetRoute.name, path: '/'),
        _i12.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i12.RouteConfig(NavigationScreenRoute.name,
            path: '/navigation-screen'),
        _i12.RouteConfig(AppOnboardingScreenRoute.name,
            path: '/app-onboarding-screen'),
        _i12.RouteConfig(SingleAlbumScreenRoute.name,
            path: '/single-album-screen'),
        _i12.RouteConfig(SettingPageRoute.name,
            path: '/setting-page',
            children: [
              _i12.RouteConfig(FirstPageRoute.name,
                  path: '', parent: SettingPageRoute.name),
              _i12.RouteConfig(MainPageRoute.name,
                  path: 'main-page', parent: SettingPageRoute.name),
              _i12.RouteConfig(SecondPageRoute.name,
                  path: 'second-page', parent: SettingPageRoute.name)
            ]),
        _i12.RouteConfig(ParamPageRoute.name, path: '/param/:id'),
        _i12.RouteConfig(LoginPageRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [_i1.AuthCheckWidget]
class AuthCheckWidgetRoute extends _i12.PageRouteInfo<void> {
  const AuthCheckWidgetRoute() : super(AuthCheckWidgetRoute.name, path: '/');

  static const String name = 'AuthCheckWidgetRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i12.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.NavigationScreen]
class NavigationScreenRoute extends _i12.PageRouteInfo<void> {
  const NavigationScreenRoute()
      : super(NavigationScreenRoute.name, path: '/navigation-screen');

  static const String name = 'NavigationScreenRoute';
}

/// generated route for
/// [_i4.AppOnboardingScreen]
class AppOnboardingScreenRoute extends _i12.PageRouteInfo<void> {
  const AppOnboardingScreenRoute()
      : super(AppOnboardingScreenRoute.name, path: '/app-onboarding-screen');

  static const String name = 'AppOnboardingScreenRoute';
}

/// generated route for
/// [_i5.SingleAlbumScreen]
class SingleAlbumScreenRoute
    extends _i12.PageRouteInfo<SingleAlbumScreenRouteArgs> {
  SingleAlbumScreenRoute({_i13.Key? key, required int id})
      : super(SingleAlbumScreenRoute.name,
            path: '/single-album-screen',
            args: SingleAlbumScreenRouteArgs(key: key, id: id));

  static const String name = 'SingleAlbumScreenRoute';
}

class SingleAlbumScreenRouteArgs {
  const SingleAlbumScreenRouteArgs({this.key, required this.id});

  final _i13.Key? key;

  final int id;

  @override
  String toString() {
    return 'SingleAlbumScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.SettingPage]
class SettingPageRoute extends _i12.PageRouteInfo<void> {
  const SettingPageRoute({List<_i12.PageRouteInfo>? children})
      : super(SettingPageRoute.name,
            path: '/setting-page', initialChildren: children);

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i7.ParamPage]
class ParamPageRoute extends _i12.PageRouteInfo<ParamPageRouteArgs> {
  ParamPageRoute({_i13.Key? key, required int paramId})
      : super(ParamPageRoute.name,
            path: '/param/:id',
            args: ParamPageRouteArgs(key: key, paramId: paramId),
            rawPathParams: {'id': paramId});

  static const String name = 'ParamPageRoute';
}

class ParamPageRouteArgs {
  const ParamPageRouteArgs({this.key, required this.paramId});

  final _i13.Key? key;

  final int paramId;

  @override
  String toString() {
    return 'ParamPageRouteArgs{key: $key, paramId: $paramId}';
  }
}

/// generated route for
/// [_i8.LoginPage]
class LoginPageRoute extends _i12.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i9.FirstPage]
class FirstPageRoute extends _i12.PageRouteInfo<void> {
  const FirstPageRoute() : super(FirstPageRoute.name, path: '');

  static const String name = 'FirstPageRoute';
}

/// generated route for
/// [_i10.MainPage]
class MainPageRoute extends _i12.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'main-page');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i11.SecondPage]
class SecondPageRoute extends _i12.PageRouteInfo<void> {
  const SecondPageRoute() : super(SecondPageRoute.name, path: 'second-page');

  static const String name = 'SecondPageRoute';
}
