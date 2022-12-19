import 'package:freezed_annotation/freezed_annotation.dart';

part 'argument.freezed.dart';

@freezed
class Argument<T> with _$Argument<T> {
    const factory Argument.data(T data) = Data;
}