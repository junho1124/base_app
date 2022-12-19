import 'package:base_app/src/data/model/owner.dart';
import 'package:base_app/src/data/model/product.dart';
import 'package:base_app/src/data/model/user.dart';
import 'package:base_app/src/domain/entities/argument.dart';
import 'package:base_app/src/presentation/view/owner_page/owner_page.dart';
import 'package:base_app/src/presentation/view/product_page/product_page.dart';
import 'package:base_app/src/presentation/view/user_page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/view/login_page/login_page.dart';
import '../presentation/view/main_page/main_page.dart';
import '../presentation/view/splash_page/splash_page.dart';
import 'route_constants.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.splashPageRoute:
        return _getRoute(const SplashPage(), settings.name);
      case RouteConstants.mainPageRoute:
        return _getRoute(const MainPage(), settings.name);
      case RouteConstants.loginPageRoute:
        return _getRoute(const LoginPage(), settings.name);
      case RouteConstants.userPageRoute:
        final arg = settings.arguments as Argument<User>;
        return _getRoute(UserPage(user: arg.data), settings.name);
      case RouteConstants.ownerPageRoute:
        final arg = settings.arguments as Argument<Owner>;
        return _getRoute(OwnerPage(owner: arg.data), settings.name);
      case RouteConstants.productPageRoute:
        final arg = settings.arguments as Argument<Product>;
        return _getRoute(ProductPage(product: arg.data), settings.name);
      default:
        return _getRoute(const MainPage(), settings.name);
    }
  }

  static Route<dynamic>? _getRoute(Widget view, String? routeName) {
    return GetPageRoute(page: () => view, routeName: routeName);
  }
}
