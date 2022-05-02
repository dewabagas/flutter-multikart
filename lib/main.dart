import 'package:flutter/material.dart';
import 'package:flutter_multikart/routes/routes.dart';
import 'package:flutter_multikart/themes/themes.dart';
import 'package:flutter_multikart/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 734),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH,
          defaultTransition: Transition.cupertino,
          smartManagement: SmartManagement.keepFactory,
          title: 'Bibit Analog Alarm',
          theme: Themes().lightTheme,
          builder: (BuildContext context, Widget? child) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    dismissKeyboard();
                  },
                  child: child),
            );
          },
        );
      },
    );
  }
}

void dismissKeyboard() {
}
