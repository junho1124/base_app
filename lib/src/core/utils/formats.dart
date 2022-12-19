import 'package:intl/intl.dart';

class Formats {
  ///"~ #,###,###,###"
  static NumberFormat underPriceFormat = NumberFormat("~ #,###,###,###");
  static NumberFormat overPriceFormat = NumberFormat("#,###,###,### ~");
  static NumberFormat priceFormat = NumberFormat("#,###,###,###");
  static DateFormat dateFormat = DateFormat("yyyy.MM.dd");
  static DateFormat dateFormatDash = DateFormat("yyyy-MM-dd");
}