// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:trinity_lecture_app/presentation/pages/dummy/first/dummy_ui_first_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy/second/dummy_ui_second_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/home/home_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DummyUiFirstRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyUiFirstPage(),
      );
    },
    DummyUiSecondRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUiSecondPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyUiFirstPage]
class DummyUiFirstRoute extends _i5.PageRouteInfo<void> {
  const DummyUiFirstRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyUiFirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiFirstRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUiSecondPage]
class DummyUiSecondRoute extends _i5.PageRouteInfo<void> {
  const DummyUiSecondRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyUiSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiSecondRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
