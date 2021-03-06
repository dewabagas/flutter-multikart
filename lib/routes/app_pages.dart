

import 'package:flutter_multikart/features/introduction/introduction.dart';
import 'package:flutter_multikart/features/splash/splash.dart';
import 'package:get/route_manager.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => PageSplash()
    ),
    GetPage(
      name: Routes.PAGE_INTRODUCTION,
      page: () => PageIntroduction()
    ),
  ];
}
