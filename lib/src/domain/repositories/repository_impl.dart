
import '../../core/utils/result.dart';

abstract class RepositoryImpl<D, O> {
  Future<Result> create(O data);

  Future<Result> get(D id, {bool isRemote});

  Future<Result> getAll(covariant data);

  Future<Result> update(O data);

  Future delete(D id);
}
