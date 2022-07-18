// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../features/Album/view/single_album_screen.dart' as _i2;
import '../features/AutoRoute/views/first_page.dart' as _i6;
import '../features/AutoRoute/views/main_page.dart' as _i7;
import '../features/AutoRoute/views/param_page.dart' as _i4;
import '../features/AutoRoute/views/second_page.dart' as _i8;
import '../features/BottomNavigation/view/navigation_screen.dart' as _i1;
import '../features/Login/view/login_page.dart' as _i5;
import '../features/Setting/setting_screen.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    NavigationScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationScreen());
    },
    SingleAlbumScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SingleAlbumScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SingleAlbumScreen(key: args.key, id: args.id));
    },
    SettingPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SettingPage());
    },
    ParamPageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParamPageRouteArgs>(
          orElse: () => ParamPageRouteArgs(paramId: pathParams.getInt('id')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ParamPage(key: args.key, paramId: args.paramId));
    },
    LoginPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginPage());
    },
    FirstPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FirstPage());
    },
    MainPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.MainPage());
    },
    SecondPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SecondPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(NavigationScreenRoute.name, path: '/'),
        _i9.RouteConfig(SingleAlbumScreenRoute.name,
            path: '/single-album-screen'),
        _i9.RouteConfig(SettingPageRoute.name,
            path: '/setting-page',
            children: [
              _i9.RouteConfig(FirstPageRoute.name,
                  path: '', parent: SettingPageRoute.name),
              _i9.RouteConfig(MainPageRoute.name,
                  path: 'main-page', parent: SettingPageRoute.name),
              _i9.RouteConfig(SecondPageRoute.name,
                  path: 'second-page', parent: SettingPageRoute.name)
            ]),
        _i9.RouteConfig(ParamPageRoute.name, path: '/param/:id'),
        _i9.RouteConfig(LoginPageRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [_i1.NavigationScreen]
class NavigationScreenRoute extends _i9.PageRouteInfo<void> {
  const NavigationScreenRoute() : super(NavigationScreenRoute.name, path: '/');

  static const String name = 'NavigationScreenRoute';
}

/// generated route for
/// [_i2.SingleAlbumScreen]
class SingleAlbumScreenRoute
    extends _i9.PageRouteInfo<SingleAlbumScreenRouteArgs> {
  SingleAlbumScreenRoute({_i10.Key? key, required int id})
      : super(SingleAlbumScreenRoute.name,
            path: '/single-album-screen',
            args: SingleAlbumScreenRouteArgs(key: key, id: id));

  static const String name = 'SingleAlbumScreenRoute';
}

class SingleAlbumScreenRouteArgs {
  const SingleAlbumScreenRouteArgs({this.key, required this.id});

  final _i10.Key? key;

  final int id;

  @override
  String toString() {
    return 'SingleAlbumScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.SettingPage]
class SettingPageRoute extends _i9.PageRouteInfo<void> {
  const SettingPageRoute({List<_i9.PageRouteInfo>? children})
      : super(SettingPageRoute.name,
            path: '/setting-page', initialChildren: children);

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i4.ParamPage]
class ParamPageRoute extends _i9.PageRouteInfo<ParamPageRouteArgs> {
  ParamPageRoute({_i10.Key? key, required int paramId})
      : super(ParamPageRoute.name,
            path: '/param/:id',
            args: ParamPageRouteArgs(key: key, paramId: paramId),
            rawPathParams: {'id': paramId});

  static const String name = 'ParamPageRoute';
}

class ParamPageRouteArgs {
  const ParamPageRouteArgs({this.key, required this.paramId});

  final _i10.Key? key;

  final int paramId;

  @override
  String toString() {
    return 'ParamPageRouteArgs{key: $key, paramId: $paramId}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i6.FirstPage]
class FirstPageRoute extends _i9.PageRouteInfo<void> {
  const FirstPageRoute() : super(FirstPageRoute.name, path: '');

  static const String name = 'FirstPageRoute';
}

/// generated route for
/// [_i7.MainPage]
class MainPageRoute extends _i9.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'main-page');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i8.SecondPage]
class SecondPageRoute extends _i9.PageRouteInfo<void> {
  const SecondPageRoute() : super(SecondPageRoute.name, path: 'second-page');

  static const String name = 'SecondPageRoute';
}
