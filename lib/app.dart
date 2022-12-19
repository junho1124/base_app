import '../src/config/app_routes.dart';
import '../src/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
      ),
      child: GetMaterialApp(
        // app_theme.dart 에 정의 된 앱의 테마를 불러옴
        theme: AppTheme.buildLightTheme(context.theme),
        debugShowCheckedModeBanner: false,
        // app_routes.dart 에 정의 된 namedRouteSetting 에 따라 앱을 라우팅
        onGenerateRoute: (route) => AppRoutes.onGenerateRoutes(route),
      ),
    );
  }
}


