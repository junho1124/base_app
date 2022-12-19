import 'package:base_app/src/config/route_constants.dart';
import 'package:base_app/src/core/utils/link_share_service.dart';
import 'package:base_app/src/core/utils/logger.dart';
import 'package:base_app/src/data/model/base/transmissible_data.dart';
import 'package:base_app/src/data/model/enums/how_to_login.dart';
import 'package:base_app/src/data/model/owner.dart';
import 'package:base_app/src/data/model/product.dart';
import 'package:base_app/src/data/model/user.dart';
import 'package:base_app/src/domain/entities/argument.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class MainViewModel extends GetxController {
  List<Map<String, String>> sample = [];

  User user = User(
      id: "id",
      name: "name",
      howToLogin: HowToLogin.apple,
      createAt: DateTime.now());
  Owner owner = Owner(
      id: 0, name: "name", items: [], createAt: DateTime.now(), profile: '');
  Product product = Product(
      id: 0,
      name: "name",
      price: 123,
      owner: Owner(
          id: 0,
          name: "name",
          items: [],
          createAt: DateTime.now(),
          profile: ''),
      explain: "explain",
      image: '');

  @override
  void onInit() {
    owner = owner.copyWith(items: [product]);
    product = product.copyWith(owner: owner);
    super.onInit();
  }

  void shareData(TransmissibleData data) {
    LinkShareService.shareLink(data);
  }

  Future route(String route) async {
    Argument? arg;
    switch (route) {
      case RouteConstants.userPageRoute:
        arg = Argument<User>.data(user);
        break;
      case RouteConstants.ownerPageRoute:
        arg = Argument<Owner>.data(owner);
        break;
      case RouteConstants.productPageRoute:
        arg = Argument<Product>.data(product);
        break;
    }
    await Get.toNamed(route, arguments: arg);
  }

}
