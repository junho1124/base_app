import 'package:base_app/src/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.flex,
    required this.product,
    this.ownerSuffix,
    required this.routeImageList,
    this.onLongPress,
  }) : super(key: key);

  final double flex;
  final Product product;
  final String? ownerSuffix;
  final VoidCallback routeImageList;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    double itemHeight = flex * 3;
    double itemWidth = flex * 2;
    return InkWell(
      onTap: () => routeImageList.call(),
      onLongPress: () => onLongPress?.call(),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(right: 14, top: 4, bottom: 4),
        child: SizedBox(
          height: itemHeight,
          width: itemWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: itemWidth,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: context.textTheme.headline3,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("${product.owner.name} $ownerSuffix",
                        style: context.textTheme.button),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
