import 'package:base_app/src/data/model/product.dart';
import 'package:base_app/src/data/model/owner.dart';
import 'package:base_app/src/presentation/widget/my_app_bar.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    required this.product,
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, pageName: "상품 페이지"),
      body: Column(
        children: product.toJson().entries.map((e) => Text("${e.key}: ${e.value}")).toList(),
      ),
    );
  }
}
