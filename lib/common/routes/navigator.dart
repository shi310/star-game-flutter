import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../views/views.dart';

class ApplicationRoute {
  static const home = '/home';
  static const find = '/find';
  static const proxy = '/proxy';
  static const mine = '/mine';

  /// 嵌套路由设置
  static Route? onGenerateRoute(RouteSettings settings) {
    Get.routing.args = settings.arguments;
    if (settings.name == home) {
      return _getPageRoute(
        page: const WelcomeView(),
        settings: settings,
        binding: WelcomeBinding(),
      );
    }
    return null;
  }

  /// 嵌套路由封装
  static GetPageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget page,
    Bindings? binding,
  }) {
    return GetPageRoute(
      settings: settings,
      page: () => page,
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 300),
      binding: binding,
      popGesture: false,
    );
  }
}
