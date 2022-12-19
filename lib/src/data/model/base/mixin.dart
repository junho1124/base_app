
import 'package:base_app/src/data/model/enums/how_to_login.dart';

import '../product.dart';
import '../owner.dart';
import 'transmissible_data.dart';

abstract class DateStampMixin {
  DateTime get createAt;
  DateTime? get updateAt;
  DateTime? get deleteAt;
}

abstract class SocialMixin {
  String get email;
  String get profile;
  HowToLogin get howToLogin;
  String get phoneNumber;
}

abstract class OwnerMixin {
  String get profile;
  List<Product> get items;
}

abstract class PersonMixin {
  String get name;
}

abstract class ItemMixin {
  String get name;
  String get image;
}

abstract class ProductMixin {
  int get price;
  Owner get owner;
  String get explain;
}