import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/model/owner.dart';
import '../../data/model/product.dart';
import '../../data/model/user.dart';

class HiveService {
  HiveService();
  static const String someBoxName = "someKeyword";
  static const String userBoxName = "user";
  static const String productBoxName = "product";
  static const String ownerBoxName = "owner";

  static Future init() async {
    // Device 내부의 directory 를 찾아 연결
    final directory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
    _addAdapter();
    await _openBox();
  }

  /// 사용 할 Hive 박스들을 open
  static Future _openBox() async {
    await Hive.openBox<User?>(userBoxName);
    await Hive.openBox<Owner>(ownerBoxName);
    await Hive.openBox<Product>(productBoxName);
  }

  /// Hive 객체들의 adapter 를 등록
  static void _addAdapter() {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(OwnerAdapter());
    Hive.registerAdapter(ProductAdapter());
  }
}
