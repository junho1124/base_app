import 'package:freezed_annotation/freezed_annotation.dart';
import '../user.dart';
import '../owner.dart';
import '../product.dart';

part 'transmissible_data.freezed.dart';
part 'transmissible_data.g.dart';

@freezed
class TransmissibleData with _$TransmissibleData {
  const TransmissibleData._();

  factory TransmissibleData.user(User user) = UserData;

  factory TransmissibleData.owner(Owner owner) = OwnerData;

  factory TransmissibleData.product(Product item) = ProductData;

  factory TransmissibleData.fromJson(Map<String, dynamic> json) => _$TransmissibleDataFromJson(json);
}