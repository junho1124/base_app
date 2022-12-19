import 'package:hive/hive.dart';

class Dao<T> {
  Dao({
    required String boxName,
}) {
    _dao = Hive.box<T>(boxName);
  }
  late final Box<T> _dao;

  Future addAll(List<T> values) async {
    await _dao.clear();
    await _dao.addAll(values);
    await _dao.flush();
  }

  Future add(T value) async {
    await _dao.add(value);
  }

  Future putAt(int index, T value) async {
    await _dao.putAt(index, value);
  }

  Future<List<T>> deleteAtAndGetAll(int index) async {
    await _dao.deleteAt(index);
    return _dao.values.toList();
  }

  Future deleteAt(int index) async {
    await _dao.deleteAt(index);
  }

  T? get(int index) {
    return _dao.getAt(index);
  }

  List<T> getAll() {
    return _dao.values.toList();
  }


}